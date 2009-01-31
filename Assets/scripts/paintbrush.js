// Paintbrush is based on dp.SyntaxHighlighter, http://googlecode.com/p/syntaxhighlighter

var Paintbrush = new Class({
	
	initialize: function(brush){
		this.brush = (typeof brush == 'string') ? Paintbrush.Brushes[brush] : brush;
		this.regExps = [];
		if (this.brush) this.processBrush();
	},
	
	paint: function(code){
		this.code = (code || '').replace(/^\n*/, '').replace(/\n*$/, '');
		this.matches = [];
		if (this.regExps.length) this.matchRegExps();
		this.element = new Element('div');

		// if no matches found, add entire code as plain text
		if (!this.matches.length){
			this.addBit(this.code);
			return this.element;
		}
		
		var pos	= 0;
		
		// sort the matches
		this.matches = this.matches.sort(this.sortCallback);

		// The following loop checks to see if any of the matches are inside
		// of other matches. This process would get rid of highligted strings
		// inside comments, keywords inside strings and so on.
		for (var i = 0; i < this.matches.length; i++){
			if (this.isInside(this.matches[i])) this.matches[i] = null;
		}

		// Finally, go through the final list of matches and pull the all
		// together adding everything in between that isn't a match.
		for (i = 0; i < this.matches.length; i++){
			var match = this.matches[i];
			if (!match) continue;
			this.addBit(this.copy(this.code, pos, match.index));
			this.addBit(match.value, match.css);
			pos = match.index + match.length;
		}

		this.addBit(this.code.substr(pos));
		return this.element;
	},
	
	processBrush: function(){
		for (var css in this.brush){
			$splat(this.brush[css]).each(function(regExp){
				if (typeof regExp == 'string') regExp = new RegExp('\\b' + regExp.escapeRegExp().split(' ').join('\\b|\\b') + '\\b', 'gm');
				this.regExps.push([regExp, css]);
			}, this);
		}
	},
	
	matchRegExps: function(){
		this.regExps.each(function(combo){
			this.getMatches(combo[0], combo[1]);
		}, this);
	},
	
	getMatches: function(regex, css){
		var match;
		while ((match = regex.exec(this.code))){
			this.matches[this.matches.length] = this.matchOne(match[0], match.index, css);
		}
	},
	
	matchOne: function(value, index, css){
		return {value: value, index: index, length: value.length, css: css};
	},
	
	copy: function(string, pos1, pos2){
		return string.substr(pos1, pos2 - pos1);
	},
	
	sortCallback: function(m1, m2){
		// sort matches by index first
		if (m1.index < m2.index) return -1;
		else if (m1.index > m2.index) return 1;
		else {
			// if index is the same, sort by length
			if (m1.length < m2.length) return -1;
			else if(m1.length > m2.length) return 1;
		}
		return 0;
	},

	addBit: function(str, css){
		if (!str) return;
		var span = new Element('span', {'text': str});
		if (css) span.className = css;
		this.element.adopt(span);
	},
	
	isInside: function(match){
		if (!match) return false;
		for (var i = 0; i < this.matches.length; i++){
			var current = this.matches[i];
			if (current == null) continue;
			if ((match.index > current.index) && (match.index < current.index + current.length)) return true;
		}
		return false;
	}
	
});

Paintbrush.Brushes = {
  'Note': {},
  'Plain Text': {}
};

Paintbrush.RegExps = {
	multiLineComment: (/\/\*[\s\S]*?\*\//gm),
	singleLineComment: (/\/\/.*$/gm),
	singleLinePerlComment: (/#.*$/gm),
	doubleQuotedString: (/"(?:\.|(\\\")|[^\""\n])*"/g),
	singleQuotedString: (/'(?:\.|(\\\')|[^\''\n])*'/g),
	integer: (/\b(\d+)\b/gm),
	preprocessor: (/^\s*#.*/gm)
};

// Element paint extension

Element.implement({

	paint: function(brush){
		return this.set('html', new Paintbrush(brush).paint(this.get('text')).get('html'));
	}

});