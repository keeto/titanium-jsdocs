Paintbrush.Brushes.JavaScript = {
	
	'comment': [Paintbrush.RegExps.singleLineComment, Paintbrush.RegExps.multiLineComment],
	
	'string': [Paintbrush.RegExps.singleQuotedString, Paintbrush.RegExps.doubleQuotedString],
	
	'integer': Paintbrush.RegExps.integer,
	
	'preprocessor': Paintbrush.RegExps.preprocessor,
	
	'boolean': 'true false null',
	
	'special': 'this',
	
	'keyword': "abstract boolean break byte case catch char class const continue debugger default delete do double \
		else enum export extends final finally float for function goto if implements import in instanceof int interface \
		long native new package private protected public return short static super switch synchronized throw throws transient \
		try typeof var void volatile while with prototype",
	
	'titanium': 'Titanium'
};