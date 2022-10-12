// Generated from E:/Compiler-Design/src/main/java/FrontEnd/Parser\Mx.g4 by ANTLR 4.10.1
package FrontEnd.Parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.10.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, VOID=34, BOOL=35, INT=36, STRING=37, NEW=38, CLASS=39, 
		NULL=40, TRUE=41, FALSE=42, THIS=43, IF=44, ELSE=45, FOR=46, WHILE=47, 
		BREAK=48, CONTINUE=49, RETURN=50, INT_CONSTANT=51, STRING_CONSTANT=52, 
		BOOL_CONSTANT=53, IDENTIFIER=54, WS=55, LINE_COMMENT=56, BLOCK_COMMENT=57;
	public static final int
		RULE_program = 0, RULE_defAllType = 1, RULE_functionDefinitionStatement = 2, 
		RULE_classDefinitionStatement = 3, RULE_classConstructorStatement = 4, 
		RULE_variableDefinitionStatement = 5, RULE_variableDefinitionList = 6, 
		RULE_variableDefinitionSingle = 7, RULE_statement = 8, RULE_block = 9, 
		RULE_expression = 10, RULE_expressionList = 11, RULE_parameterdataList = 12, 
		RULE_parameterList = 13, RULE_constant = 14, RULE_newformat = 15, RULE_nonarraytype = 16, 
		RULE_type = 17;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "defAllType", "functionDefinitionStatement", "classDefinitionStatement", 
			"classConstructorStatement", "variableDefinitionStatement", "variableDefinitionList", 
			"variableDefinitionSingle", "statement", "block", "expression", "expressionList", 
			"parameterdataList", "parameterList", "constant", "newformat", "nonarraytype", 
			"type"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'('", "')'", "'{'", "'}'", "','", "'='", "'.'", "'['", 
			"']'", "'++'", "'--'", "'!'", "'~'", "'+'", "'-'", "'*'", "'/'", "'%'", 
			"'>>'", "'<<'", "'>'", "'<'", "'>='", "'<='", "'=='", "'!='", "'&'", 
			"'|'", "'^'", "'&&'", "'||'", "'->'", "'void'", "'bool'", "'int'", "'string'", 
			"'new'", "'class'", "'null'", "'true'", "'false'", "'this'", "'if'", 
			"'else'", "'for'", "'while'", "'break'", "'continue'", "'return'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, "VOID", "BOOL", 
			"INT", "STRING", "NEW", "CLASS", "NULL", "TRUE", "FALSE", "THIS", "IF", 
			"ELSE", "FOR", "WHILE", "BREAK", "CONTINUE", "RETURN", "INT_CONSTANT", 
			"STRING_CONSTANT", "BOOL_CONSTANT", "IDENTIFIER", "WS", "LINE_COMMENT", 
			"BLOCK_COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public List<DefAllTypeContext> defAllType() {
			return getRuleContexts(DefAllTypeContext.class);
		}
		public DefAllTypeContext defAllType(int i) {
			return getRuleContext(DefAllTypeContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(39);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,0,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(36);
					defAllType();
					}
					} 
				}
				setState(41);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,0,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DefAllTypeContext extends ParserRuleContext {
		public FunctionDefinitionStatementContext functionDefinitionStatement() {
			return getRuleContext(FunctionDefinitionStatementContext.class,0);
		}
		public ClassDefinitionStatementContext classDefinitionStatement() {
			return getRuleContext(ClassDefinitionStatementContext.class,0);
		}
		public VariableDefinitionStatementContext variableDefinitionStatement() {
			return getRuleContext(VariableDefinitionStatementContext.class,0);
		}
		public DefAllTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_defAllType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterDefAllType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitDefAllType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitDefAllType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DefAllTypeContext defAllType() throws RecognitionException {
		DefAllTypeContext _localctx = new DefAllTypeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_defAllType);
		try {
			setState(46);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(42);
				functionDefinitionStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(43);
				classDefinitionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(44);
				variableDefinitionStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(45);
				match(T__0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDefinitionStatementContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TerminalNode VOID() { return getToken(MxParser.VOID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public FunctionDefinitionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDefinitionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunctionDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunctionDefinitionStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFunctionDefinitionStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionDefinitionStatementContext functionDefinitionStatement() throws RecognitionException {
		FunctionDefinitionStatementContext _localctx = new FunctionDefinitionStatementContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_functionDefinitionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(50);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(48);
				match(VOID);
				}
				break;
			case 2:
				{
				setState(49);
				type(0);
				}
				break;
			}
			setState(52);
			match(IDENTIFIER);
			setState(53);
			match(T__1);
			setState(55);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				{
				setState(54);
				parameterList();
				}
				break;
			}
			setState(57);
			match(T__2);
			setState(58);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDefinitionStatementContext extends ParserRuleContext {
		public TerminalNode CLASS() { return getToken(MxParser.CLASS, 0); }
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public List<FunctionDefinitionStatementContext> functionDefinitionStatement() {
			return getRuleContexts(FunctionDefinitionStatementContext.class);
		}
		public FunctionDefinitionStatementContext functionDefinitionStatement(int i) {
			return getRuleContext(FunctionDefinitionStatementContext.class,i);
		}
		public List<VariableDefinitionStatementContext> variableDefinitionStatement() {
			return getRuleContexts(VariableDefinitionStatementContext.class);
		}
		public VariableDefinitionStatementContext variableDefinitionStatement(int i) {
			return getRuleContext(VariableDefinitionStatementContext.class,i);
		}
		public List<ClassConstructorStatementContext> classConstructorStatement() {
			return getRuleContexts(ClassConstructorStatementContext.class);
		}
		public ClassConstructorStatementContext classConstructorStatement(int i) {
			return getRuleContext(ClassConstructorStatementContext.class,i);
		}
		public ClassDefinitionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDefinitionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClassDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClassDefinitionStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitClassDefinitionStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassDefinitionStatementContext classDefinitionStatement() throws RecognitionException {
		ClassDefinitionStatementContext _localctx = new ClassDefinitionStatementContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_classDefinitionStatement);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(60);
			match(CLASS);
			setState(61);
			match(IDENTIFIER);
			setState(62);
			match(T__3);
			setState(68);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					setState(66);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
					case 1:
						{
						setState(63);
						functionDefinitionStatement();
						}
						break;
					case 2:
						{
						setState(64);
						variableDefinitionStatement();
						}
						break;
					case 3:
						{
						setState(65);
						classConstructorStatement();
						}
						break;
					}
					} 
				}
				setState(70);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
			}
			setState(71);
			match(T__4);
			setState(72);
			match(T__0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassConstructorStatementContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ClassConstructorStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classConstructorStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClassConstructorStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClassConstructorStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitClassConstructorStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassConstructorStatementContext classConstructorStatement() throws RecognitionException {
		ClassConstructorStatementContext _localctx = new ClassConstructorStatementContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_classConstructorStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(74);
			match(IDENTIFIER);
			setState(75);
			match(T__1);
			setState(76);
			parameterList();
			setState(77);
			match(T__2);
			setState(78);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDefinitionStatementContext extends ParserRuleContext {
		public VariableDefinitionListContext variableDefinitionList() {
			return getRuleContext(VariableDefinitionListContext.class,0);
		}
		public VariableDefinitionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDefinitionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVariableDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVariableDefinitionStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitVariableDefinitionStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableDefinitionStatementContext variableDefinitionStatement() throws RecognitionException {
		VariableDefinitionStatementContext _localctx = new VariableDefinitionStatementContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_variableDefinitionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(80);
			variableDefinitionList();
			setState(81);
			match(T__0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDefinitionListContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<VariableDefinitionSingleContext> variableDefinitionSingle() {
			return getRuleContexts(VariableDefinitionSingleContext.class);
		}
		public VariableDefinitionSingleContext variableDefinitionSingle(int i) {
			return getRuleContext(VariableDefinitionSingleContext.class,i);
		}
		public VariableDefinitionListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDefinitionList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVariableDefinitionList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVariableDefinitionList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitVariableDefinitionList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableDefinitionListContext variableDefinitionList() throws RecognitionException {
		VariableDefinitionListContext _localctx = new VariableDefinitionListContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_variableDefinitionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			type(0);
			setState(84);
			variableDefinitionSingle();
			setState(89);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(85);
				match(T__5);
				setState(86);
				variableDefinitionSingle();
				}
				}
				setState(91);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDefinitionSingleContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VariableDefinitionSingleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDefinitionSingle; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVariableDefinitionSingle(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVariableDefinitionSingle(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitVariableDefinitionSingle(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableDefinitionSingleContext variableDefinitionSingle() throws RecognitionException {
		VariableDefinitionSingleContext _localctx = new VariableDefinitionSingleContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_variableDefinitionSingle);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(92);
			match(IDENTIFIER);
			setState(95);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__6) {
				{
				setState(93);
				match(T__6);
				setState(94);
				expression(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	 
		public StatementContext() { }
		public void copyFrom(StatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Stat_emptyContext extends StatementContext {
		public Stat_emptyContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_empty(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_empty(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_empty(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_forContext extends StatementContext {
		public VariableDefinitionListContext init1;
		public ExpressionListContext init2;
		public ExpressionContext condition;
		public ExpressionContext update;
		public StatementContext for1;
		public BlockContext for2;
		public TerminalNode FOR() { return getToken(MxParser.FOR, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public VariableDefinitionListContext variableDefinitionList() {
			return getRuleContext(VariableDefinitionListContext.class,0);
		}
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
		}
		public Stat_forContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_for(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_for(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_for(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_continueContext extends StatementContext {
		public TerminalNode CONTINUE() { return getToken(MxParser.CONTINUE, 0); }
		public Stat_continueContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_continue(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_continue(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_continue(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_ifContext extends StatementContext {
		public ExpressionContext condition;
		public StatementContext if1;
		public BlockContext if2;
		public StatementContext else1;
		public BlockContext else2;
		public TerminalNode IF() { return getToken(MxParser.IF, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public List<BlockContext> block() {
			return getRuleContexts(BlockContext.class);
		}
		public BlockContext block(int i) {
			return getRuleContext(BlockContext.class,i);
		}
		public TerminalNode ELSE() { return getToken(MxParser.ELSE, 0); }
		public Stat_ifContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_if(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_if(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_if(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_returnContext extends StatementContext {
		public TerminalNode RETURN() { return getToken(MxParser.RETURN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Stat_returnContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_return(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_return(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_return(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_whileContext extends StatementContext {
		public ExpressionContext condition;
		public StatementContext while1;
		public BlockContext while2;
		public TerminalNode WHILE() { return getToken(MxParser.WHILE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public Stat_whileContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_while(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_while(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_while(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_vardefContext extends StatementContext {
		public VariableDefinitionStatementContext variableDefinitionStatement() {
			return getRuleContext(VariableDefinitionStatementContext.class,0);
		}
		public Stat_vardefContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_vardef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_vardef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_vardef(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_expressionContext extends StatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Stat_expressionContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_expression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_expression(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Stat_breakContext extends StatementContext {
		public TerminalNode BREAK() { return getToken(MxParser.BREAK, 0); }
		public Stat_breakContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStat_break(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStat_break(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStat_break(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_statement);
		int _la;
		try {
			setState(151);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				_localctx = new Stat_expressionContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(97);
				expression(0);
				setState(98);
				match(T__0);
				}
				break;
			case 2:
				_localctx = new Stat_emptyContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(100);
				match(T__0);
				}
				break;
			case 3:
				_localctx = new Stat_vardefContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(101);
				variableDefinitionStatement();
				}
				break;
			case 4:
				_localctx = new Stat_ifContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(102);
				match(IF);
				setState(103);
				match(T__1);
				setState(104);
				((Stat_ifContext)_localctx).condition = expression(0);
				setState(105);
				match(T__2);
				setState(108);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
				case 1:
					{
					setState(106);
					((Stat_ifContext)_localctx).if1 = statement();
					}
					break;
				case 2:
					{
					setState(107);
					((Stat_ifContext)_localctx).if2 = block();
					}
					break;
				}
				setState(115);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
				case 1:
					{
					setState(110);
					match(ELSE);
					setState(113);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
					case 1:
						{
						setState(111);
						((Stat_ifContext)_localctx).else1 = statement();
						}
						break;
					case 2:
						{
						setState(112);
						((Stat_ifContext)_localctx).else2 = block();
						}
						break;
					}
					}
					break;
				}
				}
				break;
			case 5:
				_localctx = new Stat_forContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(117);
				match(FOR);
				setState(118);
				match(T__1);
				setState(121);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
				case 1:
					{
					setState(119);
					((Stat_forContext)_localctx).init1 = variableDefinitionList();
					}
					break;
				case 2:
					{
					setState(120);
					((Stat_forContext)_localctx).init2 = expressionList();
					}
					break;
				}
				setState(123);
				match(T__0);
				setState(124);
				((Stat_forContext)_localctx).condition = expression(0);
				setState(125);
				match(T__0);
				setState(127);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << NEW) | (1L << NULL) | (1L << THIS) | (1L << INT_CONSTANT) | (1L << STRING_CONSTANT) | (1L << BOOL_CONSTANT) | (1L << IDENTIFIER))) != 0)) {
					{
					setState(126);
					((Stat_forContext)_localctx).update = expression(0);
					}
				}

				setState(129);
				match(T__2);
				setState(132);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
				case 1:
					{
					setState(130);
					((Stat_forContext)_localctx).for1 = statement();
					}
					break;
				case 2:
					{
					setState(131);
					((Stat_forContext)_localctx).for2 = block();
					}
					break;
				}
				}
				break;
			case 6:
				_localctx = new Stat_whileContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(134);
				match(WHILE);
				setState(135);
				match(T__1);
				setState(136);
				((Stat_whileContext)_localctx).condition = expression(0);
				setState(137);
				match(T__2);
				setState(140);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
				case 1:
					{
					setState(138);
					((Stat_whileContext)_localctx).while1 = statement();
					}
					break;
				case 2:
					{
					setState(139);
					((Stat_whileContext)_localctx).while2 = block();
					}
					break;
				}
				}
				break;
			case 7:
				_localctx = new Stat_breakContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(142);
				match(BREAK);
				setState(143);
				match(T__0);
				}
				break;
			case 8:
				_localctx = new Stat_continueContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(144);
				match(CONTINUE);
				setState(145);
				match(T__0);
				}
				break;
			case 9:
				_localctx = new Stat_returnContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(146);
				match(RETURN);
				setState(148);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << NEW) | (1L << NULL) | (1L << THIS) | (1L << INT_CONSTANT) | (1L << STRING_CONSTANT) | (1L << BOOL_CONSTANT) | (1L << IDENTIFIER))) != 0)) {
					{
					setState(147);
					expression(0);
					}
				}

				setState(150);
				match(T__0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_block);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(153);
			match(T__3);
			setState(157);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(154);
					statement();
					}
					} 
				}
				setState(159);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			}
			setState(160);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Expr_constContext extends ExpressionContext {
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public Expr_constContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_const(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_const(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_const(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_newContext extends ExpressionContext {
		public TerminalNode NEW() { return getToken(MxParser.NEW, 0); }
		public NewformatContext newformat() {
			return getRuleContext(NewformatContext.class,0);
		}
		public Expr_newContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_new(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_new(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_new(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_assignContext extends ExpressionContext {
		public ExpressionContext operand1;
		public ExpressionContext operand2;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Expr_assignContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_assign(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_assign(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_assign(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_functionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ParameterdataListContext parameterdataList() {
			return getRuleContext(ParameterdataListContext.class,0);
		}
		public Expr_functionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_function(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_function(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_function(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_binaryContext extends ExpressionContext {
		public ExpressionContext operand1;
		public Token op;
		public ExpressionContext operand2;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Expr_binaryContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_binary(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_binary(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_binary(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_arrayContext extends ExpressionContext {
		public ExpressionContext array;
		public ExpressionContext index;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Expr_arrayContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_array(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_array(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_array(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_lambdaContext extends ExpressionContext {
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ParameterdataListContext parameterdataList() {
			return getRuleContext(ParameterdataListContext.class,0);
		}
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public Expr_lambdaContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_lambda(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_lambda(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_lambda(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_memberContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public Expr_memberContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_member(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_member(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_member(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_singlebeforeContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Expr_singlebeforeContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_singlebefore(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_singlebefore(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_singlebefore(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_THISContext extends ExpressionContext {
		public TerminalNode THIS() { return getToken(MxParser.THIS, 0); }
		public Expr_THISContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_THIS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_THIS(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_THIS(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_bracketContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Expr_bracketContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_bracket(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_bracket(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_bracket(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_singleafterContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Expr_singleafterContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_singleafter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_singleafter(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_singleafter(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_IDContext extends ExpressionContext {
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public Expr_IDContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_ID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_ID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_ID(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 20;
		enterRecursionRule(_localctx, 20, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(193);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IDENTIFIER:
				{
				_localctx = new Expr_IDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(163);
				match(IDENTIFIER);
				}
				break;
			case NULL:
			case INT_CONSTANT:
			case STRING_CONSTANT:
			case BOOL_CONSTANT:
				{
				_localctx = new Expr_constContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(164);
				constant();
				}
				break;
			case THIS:
				{
				_localctx = new Expr_THISContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(165);
				match(THIS);
				}
				break;
			case NEW:
				{
				_localctx = new Expr_newContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(166);
				match(NEW);
				setState(167);
				newformat();
				}
				break;
			case T__1:
				{
				_localctx = new Expr_bracketContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(168);
				match(T__1);
				setState(169);
				expression(0);
				setState(170);
				match(T__2);
				}
				break;
			case T__10:
			case T__11:
			case T__12:
			case T__13:
			case T__14:
			case T__15:
				{
				_localctx = new Expr_singlebeforeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(172);
				((Expr_singlebeforeContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15))) != 0)) ) {
					((Expr_singlebeforeContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(173);
				expression(10);
				}
				break;
			case T__8:
				{
				_localctx = new Expr_lambdaContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(179);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
				case 1:
					{
					setState(174);
					match(T__8);
					setState(175);
					match(T__27);
					setState(176);
					match(T__9);
					}
					break;
				case 2:
					{
					setState(177);
					match(T__8);
					setState(178);
					match(T__9);
					}
					break;
				}
				setState(185);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__1) {
					{
					setState(181);
					match(T__1);
					setState(182);
					parameterList();
					setState(183);
					match(T__2);
					}
				}

				setState(187);
				match(T__32);
				setState(188);
				block();
				setState(189);
				match(T__1);
				setState(190);
				parameterdataList();
				setState(191);
				match(T__2);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(237);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(235);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
					case 1:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(195);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(196);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__16) | (1L << T__17) | (1L << T__18))) != 0)) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(197);
						((Expr_binaryContext)_localctx).operand2 = expression(10);
						}
						break;
					case 2:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(198);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(199);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__14 || _la==T__15) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(200);
						((Expr_binaryContext)_localctx).operand2 = expression(9);
						}
						break;
					case 3:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(201);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(202);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__19 || _la==T__20) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(203);
						((Expr_binaryContext)_localctx).operand2 = expression(8);
						}
						break;
					case 4:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(204);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(205);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__21) | (1L << T__22) | (1L << T__23) | (1L << T__24))) != 0)) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(206);
						((Expr_binaryContext)_localctx).operand2 = expression(7);
						}
						break;
					case 5:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(207);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(208);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__25 || _la==T__26) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(209);
						((Expr_binaryContext)_localctx).operand2 = expression(6);
						}
						break;
					case 6:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(210);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(211);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__27) | (1L << T__28) | (1L << T__29))) != 0)) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(212);
						((Expr_binaryContext)_localctx).operand2 = expression(5);
						}
						break;
					case 7:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(213);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(214);
						((Expr_binaryContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__30 || _la==T__31) ) {
							((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(215);
						((Expr_binaryContext)_localctx).operand2 = expression(4);
						}
						break;
					case 8:
						{
						_localctx = new Expr_assignContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_assignContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(216);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(217);
						match(T__6);
						setState(218);
						((Expr_assignContext)_localctx).operand2 = expression(2);
						}
						break;
					case 9:
						{
						_localctx = new Expr_memberContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(219);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(220);
						match(T__7);
						setState(221);
						match(IDENTIFIER);
						}
						break;
					case 10:
						{
						_localctx = new Expr_arrayContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_arrayContext)_localctx).array = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(222);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(223);
						match(T__8);
						setState(224);
						((Expr_arrayContext)_localctx).index = expression(0);
						setState(225);
						match(T__9);
						}
						break;
					case 11:
						{
						_localctx = new Expr_functionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(227);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(228);
						match(T__1);
						setState(230);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << NEW) | (1L << NULL) | (1L << THIS) | (1L << INT_CONSTANT) | (1L << STRING_CONSTANT) | (1L << BOOL_CONSTANT) | (1L << IDENTIFIER))) != 0)) {
							{
							setState(229);
							parameterdataList();
							}
						}

						setState(232);
						match(T__2);
						}
						break;
					case 12:
						{
						_localctx = new Expr_singleafterContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(233);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(234);
						((Expr_singleafterContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__10 || _la==T__11) ) {
							((Expr_singleafterContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(239);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class ExpressionListContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExpressionListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpressionList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpressionList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpressionList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionListContext expressionList() throws RecognitionException {
		ExpressionListContext _localctx = new ExpressionListContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_expressionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(240);
			expression(0);
			setState(245);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(241);
				match(T__5);
				setState(242);
				expression(0);
				}
				}
				setState(247);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParameterdataListContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ParameterdataListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameterdataList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterParameterdataList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitParameterdataList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitParameterdataList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParameterdataListContext parameterdataList() throws RecognitionException {
		ParameterdataListContext _localctx = new ParameterdataListContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_parameterdataList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(248);
			expression(0);
			setState(253);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(249);
				match(T__5);
				setState(250);
				expression(0);
				}
				}
				setState(255);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParameterListContext extends ParserRuleContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public List<TerminalNode> IDENTIFIER() { return getTokens(MxParser.IDENTIFIER); }
		public TerminalNode IDENTIFIER(int i) {
			return getToken(MxParser.IDENTIFIER, i);
		}
		public ParameterListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameterList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterParameterList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitParameterList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitParameterList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParameterListContext parameterList() throws RecognitionException {
		ParameterListContext _localctx = new ParameterListContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_parameterList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(256);
			type(0);
			setState(257);
			match(IDENTIFIER);
			setState(264);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(258);
				match(T__5);
				setState(259);
				type(0);
				setState(260);
				match(IDENTIFIER);
				}
				}
				setState(266);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public TerminalNode BOOL_CONSTANT() { return getToken(MxParser.BOOL_CONSTANT, 0); }
		public TerminalNode INT_CONSTANT() { return getToken(MxParser.INT_CONSTANT, 0); }
		public TerminalNode STRING_CONSTANT() { return getToken(MxParser.STRING_CONSTANT, 0); }
		public TerminalNode NULL() { return getToken(MxParser.NULL, 0); }
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitConstant(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitConstant(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_constant);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(267);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << NULL) | (1L << INT_CONSTANT) | (1L << STRING_CONSTANT) | (1L << BOOL_CONSTANT))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NewformatContext extends ParserRuleContext {
		public NewformatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newformat; }
	 
		public NewformatContext() { }
		public void copyFrom(NewformatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Newformat_classContext extends NewformatContext {
		public NonarraytypeContext nonarraytype() {
			return getRuleContext(NonarraytypeContext.class,0);
		}
		public Newformat_classContext(NewformatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNewformat_class(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNewformat_class(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNewformat_class(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Newformat_multiArrayContext extends NewformatContext {
		public NonarraytypeContext nonarraytype() {
			return getRuleContext(NonarraytypeContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Newformat_multiArrayContext(NewformatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNewformat_multiArray(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNewformat_multiArray(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNewformat_multiArray(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Newformat_normalContext extends NewformatContext {
		public NonarraytypeContext nonarraytype() {
			return getRuleContext(NonarraytypeContext.class,0);
		}
		public Newformat_normalContext(NewformatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNewformat_normal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNewformat_normal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNewformat_normal(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Newformat_errorContext extends NewformatContext {
		public NonarraytypeContext nonarraytype() {
			return getRuleContext(NonarraytypeContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Newformat_errorContext(NewformatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNewformat_error(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNewformat_error(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNewformat_error(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NewformatContext newformat() throws RecognitionException {
		NewformatContext _localctx = new NewformatContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_newformat);
		try {
			int _alt;
			setState(313);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,32,_ctx) ) {
			case 1:
				_localctx = new Newformat_errorContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(269);
				nonarraytype();
				setState(274); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(270);
						match(T__8);
						setState(271);
						expression(0);
						setState(272);
						match(T__9);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(276); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(280); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(278);
						match(T__8);
						setState(279);
						match(T__9);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(282); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(288); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(284);
						match(T__8);
						setState(285);
						expression(0);
						setState(286);
						match(T__9);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(290); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 2:
				_localctx = new Newformat_multiArrayContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(292);
				nonarraytype();
				setState(297); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(293);
						match(T__8);
						setState(294);
						expression(0);
						setState(295);
						match(T__9);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(299); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,30,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(305);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,31,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(301);
						match(T__8);
						setState(302);
						match(T__9);
						}
						} 
					}
					setState(307);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,31,_ctx);
				}
				}
				break;
			case 3:
				_localctx = new Newformat_classContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(308);
				nonarraytype();
				setState(309);
				match(T__1);
				setState(310);
				match(T__2);
				}
				break;
			case 4:
				_localctx = new Newformat_normalContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(312);
				nonarraytype();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NonarraytypeContext extends ParserRuleContext {
		public TerminalNode INT() { return getToken(MxParser.INT, 0); }
		public TerminalNode BOOL() { return getToken(MxParser.BOOL, 0); }
		public TerminalNode STRING() { return getToken(MxParser.STRING, 0); }
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public NonarraytypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_nonarraytype; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNonarraytype(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNonarraytype(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNonarraytype(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NonarraytypeContext nonarraytype() throws RecognitionException {
		NonarraytypeContext _localctx = new NonarraytypeContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_nonarraytype);
		try {
			setState(320);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,33,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(316);
				match(INT);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(317);
				match(BOOL);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(318);
				match(STRING);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(319);
				match(IDENTIFIER);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Type_arrayContext extends TypeContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public Type_arrayContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterType_array(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitType_array(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitType_array(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Type_basicContext extends TypeContext {
		public NonarraytypeContext nonarraytype() {
			return getRuleContext(NonarraytypeContext.class,0);
		}
		public Type_basicContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterType_basic(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitType_basic(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitType_basic(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		return type(0);
	}

	private TypeContext type(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		TypeContext _localctx = new TypeContext(_ctx, _parentState);
		TypeContext _prevctx = _localctx;
		int _startState = 34;
		enterRecursionRule(_localctx, 34, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			_localctx = new Type_basicContext(_localctx);
			_ctx = _localctx;
			_prevctx = _localctx;

			setState(323);
			nonarraytype();
			}
			_ctx.stop = _input.LT(-1);
			setState(330);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new Type_arrayContext(new TypeContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(325);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(326);
					match(T__8);
					setState(327);
					match(T__9);
					}
					} 
				}
				setState(332);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 10:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		case 17:
			return type_sempred((TypeContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 9);
		case 1:
			return precpred(_ctx, 8);
		case 2:
			return precpred(_ctx, 7);
		case 3:
			return precpred(_ctx, 6);
		case 4:
			return precpred(_ctx, 5);
		case 5:
			return precpred(_ctx, 4);
		case 6:
			return precpred(_ctx, 3);
		case 7:
			return precpred(_ctx, 2);
		case 8:
			return precpred(_ctx, 16);
		case 9:
			return precpred(_ctx, 15);
		case 10:
			return precpred(_ctx, 12);
		case 11:
			return precpred(_ctx, 11);
		}
		return true;
	}
	private boolean type_sempred(TypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 12:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u00019\u014e\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0001\u0000\u0005\u0000"+
		"&\b\u0000\n\u0000\f\u0000)\t\u0000\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0003\u0001/\b\u0001\u0001\u0002\u0001\u0002\u0003\u0002"+
		"3\b\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u00028\b\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0005\u0003C\b\u0003\n\u0003\f\u0003F\t"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0005\u0006X\b"+
		"\u0006\n\u0006\f\u0006[\t\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0003"+
		"\u0007`\b\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\bm\b\b\u0001\b\u0001\b\u0001"+
		"\b\u0003\br\b\b\u0003\bt\b\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\bz"+
		"\b\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\b\u0080\b\b\u0001\b\u0001\b"+
		"\u0001\b\u0003\b\u0085\b\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0003\b\u008d\b\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003"+
		"\b\u0095\b\b\u0001\b\u0003\b\u0098\b\b\u0001\t\u0001\t\u0005\t\u009c\b"+
		"\t\n\t\f\t\u009f\t\t\u0001\t\u0001\t\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0003\n\u00b4\b\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0003\n\u00ba\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0003"+
		"\n\u00c2\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0003\n\u00e7\b\n\u0001\n\u0001\n\u0001\n\u0005\n\u00ec\b\n\n\n\f\n"+
		"\u00ef\t\n\u0001\u000b\u0001\u000b\u0001\u000b\u0005\u000b\u00f4\b\u000b"+
		"\n\u000b\f\u000b\u00f7\t\u000b\u0001\f\u0001\f\u0001\f\u0005\f\u00fc\b"+
		"\f\n\f\f\f\u00ff\t\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0005"+
		"\r\u0107\b\r\n\r\f\r\u010a\t\r\u0001\u000e\u0001\u000e\u0001\u000f\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0004\u000f\u0113\b\u000f\u000b"+
		"\u000f\f\u000f\u0114\u0001\u000f\u0001\u000f\u0004\u000f\u0119\b\u000f"+
		"\u000b\u000f\f\u000f\u011a\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f"+
		"\u0004\u000f\u0121\b\u000f\u000b\u000f\f\u000f\u0122\u0001\u000f\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0004\u000f\u012a\b\u000f\u000b"+
		"\u000f\f\u000f\u012b\u0001\u000f\u0001\u000f\u0005\u000f\u0130\b\u000f"+
		"\n\u000f\f\u000f\u0133\t\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001"+
		"\u000f\u0001\u000f\u0003\u000f\u013a\b\u000f\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0003\u0010\u0141\b\u0010\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0005\u0011\u0149"+
		"\b\u0011\n\u0011\f\u0011\u014c\t\u0011\u0001\u0011\u0000\u0002\u0014\""+
		"\u0012\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018"+
		"\u001a\u001c\u001e \"\u0000\n\u0001\u0000\u000b\u0010\u0001\u0000\u0011"+
		"\u0013\u0001\u0000\u000f\u0010\u0001\u0000\u0014\u0015\u0001\u0000\u0016"+
		"\u0019\u0001\u0000\u001a\u001b\u0001\u0000\u001c\u001e\u0001\u0000\u001f"+
		" \u0001\u0000\u000b\f\u0002\u0000((35\u017d\u0000\'\u0001\u0000\u0000"+
		"\u0000\u0002.\u0001\u0000\u0000\u0000\u00042\u0001\u0000\u0000\u0000\u0006"+
		"<\u0001\u0000\u0000\u0000\bJ\u0001\u0000\u0000\u0000\nP\u0001\u0000\u0000"+
		"\u0000\fS\u0001\u0000\u0000\u0000\u000e\\\u0001\u0000\u0000\u0000\u0010"+
		"\u0097\u0001\u0000\u0000\u0000\u0012\u0099\u0001\u0000\u0000\u0000\u0014"+
		"\u00c1\u0001\u0000\u0000\u0000\u0016\u00f0\u0001\u0000\u0000\u0000\u0018"+
		"\u00f8\u0001\u0000\u0000\u0000\u001a\u0100\u0001\u0000\u0000\u0000\u001c"+
		"\u010b\u0001\u0000\u0000\u0000\u001e\u0139\u0001\u0000\u0000\u0000 \u0140"+
		"\u0001\u0000\u0000\u0000\"\u0142\u0001\u0000\u0000\u0000$&\u0003\u0002"+
		"\u0001\u0000%$\u0001\u0000\u0000\u0000&)\u0001\u0000\u0000\u0000\'%\u0001"+
		"\u0000\u0000\u0000\'(\u0001\u0000\u0000\u0000(\u0001\u0001\u0000\u0000"+
		"\u0000)\'\u0001\u0000\u0000\u0000*/\u0003\u0004\u0002\u0000+/\u0003\u0006"+
		"\u0003\u0000,/\u0003\n\u0005\u0000-/\u0005\u0001\u0000\u0000.*\u0001\u0000"+
		"\u0000\u0000.+\u0001\u0000\u0000\u0000.,\u0001\u0000\u0000\u0000.-\u0001"+
		"\u0000\u0000\u0000/\u0003\u0001\u0000\u0000\u000003\u0005\"\u0000\u0000"+
		"13\u0003\"\u0011\u000020\u0001\u0000\u0000\u000021\u0001\u0000\u0000\u0000"+
		"34\u0001\u0000\u0000\u000045\u00056\u0000\u000057\u0005\u0002\u0000\u0000"+
		"68\u0003\u001a\r\u000076\u0001\u0000\u0000\u000078\u0001\u0000\u0000\u0000"+
		"89\u0001\u0000\u0000\u00009:\u0005\u0003\u0000\u0000:;\u0003\u0012\t\u0000"+
		";\u0005\u0001\u0000\u0000\u0000<=\u0005\'\u0000\u0000=>\u00056\u0000\u0000"+
		">D\u0005\u0004\u0000\u0000?C\u0003\u0004\u0002\u0000@C\u0003\n\u0005\u0000"+
		"AC\u0003\b\u0004\u0000B?\u0001\u0000\u0000\u0000B@\u0001\u0000\u0000\u0000"+
		"BA\u0001\u0000\u0000\u0000CF\u0001\u0000\u0000\u0000DB\u0001\u0000\u0000"+
		"\u0000DE\u0001\u0000\u0000\u0000EG\u0001\u0000\u0000\u0000FD\u0001\u0000"+
		"\u0000\u0000GH\u0005\u0005\u0000\u0000HI\u0005\u0001\u0000\u0000I\u0007"+
		"\u0001\u0000\u0000\u0000JK\u00056\u0000\u0000KL\u0005\u0002\u0000\u0000"+
		"LM\u0003\u001a\r\u0000MN\u0005\u0003\u0000\u0000NO\u0003\u0012\t\u0000"+
		"O\t\u0001\u0000\u0000\u0000PQ\u0003\f\u0006\u0000QR\u0005\u0001\u0000"+
		"\u0000R\u000b\u0001\u0000\u0000\u0000ST\u0003\"\u0011\u0000TY\u0003\u000e"+
		"\u0007\u0000UV\u0005\u0006\u0000\u0000VX\u0003\u000e\u0007\u0000WU\u0001"+
		"\u0000\u0000\u0000X[\u0001\u0000\u0000\u0000YW\u0001\u0000\u0000\u0000"+
		"YZ\u0001\u0000\u0000\u0000Z\r\u0001\u0000\u0000\u0000[Y\u0001\u0000\u0000"+
		"\u0000\\_\u00056\u0000\u0000]^\u0005\u0007\u0000\u0000^`\u0003\u0014\n"+
		"\u0000_]\u0001\u0000\u0000\u0000_`\u0001\u0000\u0000\u0000`\u000f\u0001"+
		"\u0000\u0000\u0000ab\u0003\u0014\n\u0000bc\u0005\u0001\u0000\u0000c\u0098"+
		"\u0001\u0000\u0000\u0000d\u0098\u0005\u0001\u0000\u0000e\u0098\u0003\n"+
		"\u0005\u0000fg\u0005,\u0000\u0000gh\u0005\u0002\u0000\u0000hi\u0003\u0014"+
		"\n\u0000il\u0005\u0003\u0000\u0000jm\u0003\u0010\b\u0000km\u0003\u0012"+
		"\t\u0000lj\u0001\u0000\u0000\u0000lk\u0001\u0000\u0000\u0000ms\u0001\u0000"+
		"\u0000\u0000nq\u0005-\u0000\u0000or\u0003\u0010\b\u0000pr\u0003\u0012"+
		"\t\u0000qo\u0001\u0000\u0000\u0000qp\u0001\u0000\u0000\u0000rt\u0001\u0000"+
		"\u0000\u0000sn\u0001\u0000\u0000\u0000st\u0001\u0000\u0000\u0000t\u0098"+
		"\u0001\u0000\u0000\u0000uv\u0005.\u0000\u0000vy\u0005\u0002\u0000\u0000"+
		"wz\u0003\f\u0006\u0000xz\u0003\u0016\u000b\u0000yw\u0001\u0000\u0000\u0000"+
		"yx\u0001\u0000\u0000\u0000yz\u0001\u0000\u0000\u0000z{\u0001\u0000\u0000"+
		"\u0000{|\u0005\u0001\u0000\u0000|}\u0003\u0014\n\u0000}\u007f\u0005\u0001"+
		"\u0000\u0000~\u0080\u0003\u0014\n\u0000\u007f~\u0001\u0000\u0000\u0000"+
		"\u007f\u0080\u0001\u0000\u0000\u0000\u0080\u0081\u0001\u0000\u0000\u0000"+
		"\u0081\u0084\u0005\u0003\u0000\u0000\u0082\u0085\u0003\u0010\b\u0000\u0083"+
		"\u0085\u0003\u0012\t\u0000\u0084\u0082\u0001\u0000\u0000\u0000\u0084\u0083"+
		"\u0001\u0000\u0000\u0000\u0085\u0098\u0001\u0000\u0000\u0000\u0086\u0087"+
		"\u0005/\u0000\u0000\u0087\u0088\u0005\u0002\u0000\u0000\u0088\u0089\u0003"+
		"\u0014\n\u0000\u0089\u008c\u0005\u0003\u0000\u0000\u008a\u008d\u0003\u0010"+
		"\b\u0000\u008b\u008d\u0003\u0012\t\u0000\u008c\u008a\u0001\u0000\u0000"+
		"\u0000\u008c\u008b\u0001\u0000\u0000\u0000\u008d\u0098\u0001\u0000\u0000"+
		"\u0000\u008e\u008f\u00050\u0000\u0000\u008f\u0098\u0005\u0001\u0000\u0000"+
		"\u0090\u0091\u00051\u0000\u0000\u0091\u0098\u0005\u0001\u0000\u0000\u0092"+
		"\u0094\u00052\u0000\u0000\u0093\u0095\u0003\u0014\n\u0000\u0094\u0093"+
		"\u0001\u0000\u0000\u0000\u0094\u0095\u0001\u0000\u0000\u0000\u0095\u0096"+
		"\u0001\u0000\u0000\u0000\u0096\u0098\u0005\u0001\u0000\u0000\u0097a\u0001"+
		"\u0000\u0000\u0000\u0097d\u0001\u0000\u0000\u0000\u0097e\u0001\u0000\u0000"+
		"\u0000\u0097f\u0001\u0000\u0000\u0000\u0097u\u0001\u0000\u0000\u0000\u0097"+
		"\u0086\u0001\u0000\u0000\u0000\u0097\u008e\u0001\u0000\u0000\u0000\u0097"+
		"\u0090\u0001\u0000\u0000\u0000\u0097\u0092\u0001\u0000\u0000\u0000\u0098"+
		"\u0011\u0001\u0000\u0000\u0000\u0099\u009d\u0005\u0004\u0000\u0000\u009a"+
		"\u009c\u0003\u0010\b\u0000\u009b\u009a\u0001\u0000\u0000\u0000\u009c\u009f"+
		"\u0001\u0000\u0000\u0000\u009d\u009b\u0001\u0000\u0000\u0000\u009d\u009e"+
		"\u0001\u0000\u0000\u0000\u009e\u00a0\u0001\u0000\u0000\u0000\u009f\u009d"+
		"\u0001\u0000\u0000\u0000\u00a0\u00a1\u0005\u0005\u0000\u0000\u00a1\u0013"+
		"\u0001\u0000\u0000\u0000\u00a2\u00a3\u0006\n\uffff\uffff\u0000\u00a3\u00c2"+
		"\u00056\u0000\u0000\u00a4\u00c2\u0003\u001c\u000e\u0000\u00a5\u00c2\u0005"+
		"+\u0000\u0000\u00a6\u00a7\u0005&\u0000\u0000\u00a7\u00c2\u0003\u001e\u000f"+
		"\u0000\u00a8\u00a9\u0005\u0002\u0000\u0000\u00a9\u00aa\u0003\u0014\n\u0000"+
		"\u00aa\u00ab\u0005\u0003\u0000\u0000\u00ab\u00c2\u0001\u0000\u0000\u0000"+
		"\u00ac\u00ad\u0007\u0000\u0000\u0000\u00ad\u00c2\u0003\u0014\n\n\u00ae"+
		"\u00af\u0005\t\u0000\u0000\u00af\u00b0\u0005\u001c\u0000\u0000\u00b0\u00b4"+
		"\u0005\n\u0000\u0000\u00b1\u00b2\u0005\t\u0000\u0000\u00b2\u00b4\u0005"+
		"\n\u0000\u0000\u00b3\u00ae\u0001\u0000\u0000\u0000\u00b3\u00b1\u0001\u0000"+
		"\u0000\u0000\u00b4\u00b9\u0001\u0000\u0000\u0000\u00b5\u00b6\u0005\u0002"+
		"\u0000\u0000\u00b6\u00b7\u0003\u001a\r\u0000\u00b7\u00b8\u0005\u0003\u0000"+
		"\u0000\u00b8\u00ba\u0001\u0000\u0000\u0000\u00b9\u00b5\u0001\u0000\u0000"+
		"\u0000\u00b9\u00ba\u0001\u0000\u0000\u0000\u00ba\u00bb\u0001\u0000\u0000"+
		"\u0000\u00bb\u00bc\u0005!\u0000\u0000\u00bc\u00bd\u0003\u0012\t\u0000"+
		"\u00bd\u00be\u0005\u0002\u0000\u0000\u00be\u00bf\u0003\u0018\f\u0000\u00bf"+
		"\u00c0\u0005\u0003\u0000\u0000\u00c0\u00c2\u0001\u0000\u0000\u0000\u00c1"+
		"\u00a2\u0001\u0000\u0000\u0000\u00c1\u00a4\u0001\u0000\u0000\u0000\u00c1"+
		"\u00a5\u0001\u0000\u0000\u0000\u00c1\u00a6\u0001\u0000\u0000\u0000\u00c1"+
		"\u00a8\u0001\u0000\u0000\u0000\u00c1\u00ac\u0001\u0000\u0000\u0000\u00c1"+
		"\u00b3\u0001\u0000\u0000\u0000\u00c2\u00ed\u0001\u0000\u0000\u0000\u00c3"+
		"\u00c4\n\t\u0000\u0000\u00c4\u00c5\u0007\u0001\u0000\u0000\u00c5\u00ec"+
		"\u0003\u0014\n\n\u00c6\u00c7\n\b\u0000\u0000\u00c7\u00c8\u0007\u0002\u0000"+
		"\u0000\u00c8\u00ec\u0003\u0014\n\t\u00c9\u00ca\n\u0007\u0000\u0000\u00ca"+
		"\u00cb\u0007\u0003\u0000\u0000\u00cb\u00ec\u0003\u0014\n\b\u00cc\u00cd"+
		"\n\u0006\u0000\u0000\u00cd\u00ce\u0007\u0004\u0000\u0000\u00ce\u00ec\u0003"+
		"\u0014\n\u0007\u00cf\u00d0\n\u0005\u0000\u0000\u00d0\u00d1\u0007\u0005"+
		"\u0000\u0000\u00d1\u00ec\u0003\u0014\n\u0006\u00d2\u00d3\n\u0004\u0000"+
		"\u0000\u00d3\u00d4\u0007\u0006\u0000\u0000\u00d4\u00ec\u0003\u0014\n\u0005"+
		"\u00d5\u00d6\n\u0003\u0000\u0000\u00d6\u00d7\u0007\u0007\u0000\u0000\u00d7"+
		"\u00ec\u0003\u0014\n\u0004\u00d8\u00d9\n\u0002\u0000\u0000\u00d9\u00da"+
		"\u0005\u0007\u0000\u0000\u00da\u00ec\u0003\u0014\n\u0002\u00db\u00dc\n"+
		"\u0010\u0000\u0000\u00dc\u00dd\u0005\b\u0000\u0000\u00dd\u00ec\u00056"+
		"\u0000\u0000\u00de\u00df\n\u000f\u0000\u0000\u00df\u00e0\u0005\t\u0000"+
		"\u0000\u00e0\u00e1\u0003\u0014\n\u0000\u00e1\u00e2\u0005\n\u0000\u0000"+
		"\u00e2\u00ec\u0001\u0000\u0000\u0000\u00e3\u00e4\n\f\u0000\u0000\u00e4"+
		"\u00e6\u0005\u0002\u0000\u0000\u00e5\u00e7\u0003\u0018\f\u0000\u00e6\u00e5"+
		"\u0001\u0000\u0000\u0000\u00e6\u00e7\u0001\u0000\u0000\u0000\u00e7\u00e8"+
		"\u0001\u0000\u0000\u0000\u00e8\u00ec\u0005\u0003\u0000\u0000\u00e9\u00ea"+
		"\n\u000b\u0000\u0000\u00ea\u00ec\u0007\b\u0000\u0000\u00eb\u00c3\u0001"+
		"\u0000\u0000\u0000\u00eb\u00c6\u0001\u0000\u0000\u0000\u00eb\u00c9\u0001"+
		"\u0000\u0000\u0000\u00eb\u00cc\u0001\u0000\u0000\u0000\u00eb\u00cf\u0001"+
		"\u0000\u0000\u0000\u00eb\u00d2\u0001\u0000\u0000\u0000\u00eb\u00d5\u0001"+
		"\u0000\u0000\u0000\u00eb\u00d8\u0001\u0000\u0000\u0000\u00eb\u00db\u0001"+
		"\u0000\u0000\u0000\u00eb\u00de\u0001\u0000\u0000\u0000\u00eb\u00e3\u0001"+
		"\u0000\u0000\u0000\u00eb\u00e9\u0001\u0000\u0000\u0000\u00ec\u00ef\u0001"+
		"\u0000\u0000\u0000\u00ed\u00eb\u0001\u0000\u0000\u0000\u00ed\u00ee\u0001"+
		"\u0000\u0000\u0000\u00ee\u0015\u0001\u0000\u0000\u0000\u00ef\u00ed\u0001"+
		"\u0000\u0000\u0000\u00f0\u00f5\u0003\u0014\n\u0000\u00f1\u00f2\u0005\u0006"+
		"\u0000\u0000\u00f2\u00f4\u0003\u0014\n\u0000\u00f3\u00f1\u0001\u0000\u0000"+
		"\u0000\u00f4\u00f7\u0001\u0000\u0000\u0000\u00f5\u00f3\u0001\u0000\u0000"+
		"\u0000\u00f5\u00f6\u0001\u0000\u0000\u0000\u00f6\u0017\u0001\u0000\u0000"+
		"\u0000\u00f7\u00f5\u0001\u0000\u0000\u0000\u00f8\u00fd\u0003\u0014\n\u0000"+
		"\u00f9\u00fa\u0005\u0006\u0000\u0000\u00fa\u00fc\u0003\u0014\n\u0000\u00fb"+
		"\u00f9\u0001\u0000\u0000\u0000\u00fc\u00ff\u0001\u0000\u0000\u0000\u00fd"+
		"\u00fb\u0001\u0000\u0000\u0000\u00fd\u00fe\u0001\u0000\u0000\u0000\u00fe"+
		"\u0019\u0001\u0000\u0000\u0000\u00ff\u00fd\u0001\u0000\u0000\u0000\u0100"+
		"\u0101\u0003\"\u0011\u0000\u0101\u0108\u00056\u0000\u0000\u0102\u0103"+
		"\u0005\u0006\u0000\u0000\u0103\u0104\u0003\"\u0011\u0000\u0104\u0105\u0005"+
		"6\u0000\u0000\u0105\u0107\u0001\u0000\u0000\u0000\u0106\u0102\u0001\u0000"+
		"\u0000\u0000\u0107\u010a\u0001\u0000\u0000\u0000\u0108\u0106\u0001\u0000"+
		"\u0000\u0000\u0108\u0109\u0001\u0000\u0000\u0000\u0109\u001b\u0001\u0000"+
		"\u0000\u0000\u010a\u0108\u0001\u0000\u0000\u0000\u010b\u010c\u0007\t\u0000"+
		"\u0000\u010c\u001d\u0001\u0000\u0000\u0000\u010d\u0112\u0003 \u0010\u0000"+
		"\u010e\u010f\u0005\t\u0000\u0000\u010f\u0110\u0003\u0014\n\u0000\u0110"+
		"\u0111\u0005\n\u0000\u0000\u0111\u0113\u0001\u0000\u0000\u0000\u0112\u010e"+
		"\u0001\u0000\u0000\u0000\u0113\u0114\u0001\u0000\u0000\u0000\u0114\u0112"+
		"\u0001\u0000\u0000\u0000\u0114\u0115\u0001\u0000\u0000\u0000\u0115\u0118"+
		"\u0001\u0000\u0000\u0000\u0116\u0117\u0005\t\u0000\u0000\u0117\u0119\u0005"+
		"\n\u0000\u0000\u0118\u0116\u0001\u0000\u0000\u0000\u0119\u011a\u0001\u0000"+
		"\u0000\u0000\u011a\u0118\u0001\u0000\u0000\u0000\u011a\u011b\u0001\u0000"+
		"\u0000\u0000\u011b\u0120\u0001\u0000\u0000\u0000\u011c\u011d\u0005\t\u0000"+
		"\u0000\u011d\u011e\u0003\u0014\n\u0000\u011e\u011f\u0005\n\u0000\u0000"+
		"\u011f\u0121\u0001\u0000\u0000\u0000\u0120\u011c\u0001\u0000\u0000\u0000"+
		"\u0121\u0122\u0001\u0000\u0000\u0000\u0122\u0120\u0001\u0000\u0000\u0000"+
		"\u0122\u0123\u0001\u0000\u0000\u0000\u0123\u013a\u0001\u0000\u0000\u0000"+
		"\u0124\u0129\u0003 \u0010\u0000\u0125\u0126\u0005\t\u0000\u0000\u0126"+
		"\u0127\u0003\u0014\n\u0000\u0127\u0128\u0005\n\u0000\u0000\u0128\u012a"+
		"\u0001\u0000\u0000\u0000\u0129\u0125\u0001\u0000\u0000\u0000\u012a\u012b"+
		"\u0001\u0000\u0000\u0000\u012b\u0129\u0001\u0000\u0000\u0000\u012b\u012c"+
		"\u0001\u0000\u0000\u0000\u012c\u0131\u0001\u0000\u0000\u0000\u012d\u012e"+
		"\u0005\t\u0000\u0000\u012e\u0130\u0005\n\u0000\u0000\u012f\u012d\u0001"+
		"\u0000\u0000\u0000\u0130\u0133\u0001\u0000\u0000\u0000\u0131\u012f\u0001"+
		"\u0000\u0000\u0000\u0131\u0132\u0001\u0000\u0000\u0000\u0132\u013a\u0001"+
		"\u0000\u0000\u0000\u0133\u0131\u0001\u0000\u0000\u0000\u0134\u0135\u0003"+
		" \u0010\u0000\u0135\u0136\u0005\u0002\u0000\u0000\u0136\u0137\u0005\u0003"+
		"\u0000\u0000\u0137\u013a\u0001\u0000\u0000\u0000\u0138\u013a\u0003 \u0010"+
		"\u0000\u0139\u010d\u0001\u0000\u0000\u0000\u0139\u0124\u0001\u0000\u0000"+
		"\u0000\u0139\u0134\u0001\u0000\u0000\u0000\u0139\u0138\u0001\u0000\u0000"+
		"\u0000\u013a\u001f\u0001\u0000\u0000\u0000\u013b\u0141\u0001\u0000\u0000"+
		"\u0000\u013c\u0141\u0005$\u0000\u0000\u013d\u0141\u0005#\u0000\u0000\u013e"+
		"\u0141\u0005%\u0000\u0000\u013f\u0141\u00056\u0000\u0000\u0140\u013b\u0001"+
		"\u0000\u0000\u0000\u0140\u013c\u0001\u0000\u0000\u0000\u0140\u013d\u0001"+
		"\u0000\u0000\u0000\u0140\u013e\u0001\u0000\u0000\u0000\u0140\u013f\u0001"+
		"\u0000\u0000\u0000\u0141!\u0001\u0000\u0000\u0000\u0142\u0143\u0006\u0011"+
		"\uffff\uffff\u0000\u0143\u0144\u0003 \u0010\u0000\u0144\u014a\u0001\u0000"+
		"\u0000\u0000\u0145\u0146\n\u0001\u0000\u0000\u0146\u0147\u0005\t\u0000"+
		"\u0000\u0147\u0149\u0005\n\u0000\u0000\u0148\u0145\u0001\u0000\u0000\u0000"+
		"\u0149\u014c\u0001\u0000\u0000\u0000\u014a\u0148\u0001\u0000\u0000\u0000"+
		"\u014a\u014b\u0001\u0000\u0000\u0000\u014b#\u0001\u0000\u0000\u0000\u014c"+
		"\u014a\u0001\u0000\u0000\u0000#\'.27BDY_lqsy\u007f\u0084\u008c\u0094\u0097"+
		"\u009d\u00b3\u00b9\u00c1\u00e6\u00eb\u00ed\u00f5\u00fd\u0108\u0114\u011a"+
		"\u0122\u012b\u0131\u0139\u0140\u014a";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}