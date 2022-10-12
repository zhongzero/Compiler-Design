// Generated from E:/Compiler-Design/src/main/java/org/compiler_design/FrontEnd/Parser\Mx.g4 by ANTLR 4.10.1
package org.compiler_design.FrontEnd.Parser;
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
		T__31=32, VOID=33, BOOL=34, INT=35, STRING=36, NEW=37, CLASS=38, NULL=39, 
		TRUE=40, FALSE=41, THIS=42, IF=43, ELSE=44, FOR=45, WHILE=46, BREAK=47, 
		CONTINUE=48, RETURN=49, LAMBDA1=50, LAMBDA2=51, INT_CONSTANT=52, STRING_CONSTANT=53, 
		IDENTIFIER=54, WS=55, LINE_COMMENT=56, BLOCK_COMMENT=57;
	public static final int
		RULE_program = 0, RULE_subprogram = 1, RULE_functionDefinitionStatement = 2, 
		RULE_classDefinitionStatement = 3, RULE_classInitStatement = 4, RULE_variableDefinitionStatement = 5, 
		RULE_variableDefinitionList = 6, RULE_variableDefinitionSingle = 7, RULE_statement = 8, 
		RULE_block = 9, RULE_expression = 10, RULE_expressionList = 11, RULE_parameterList = 12, 
		RULE_constant = 13, RULE_newformat = 14, RULE_nonarraytype = 15, RULE_type = 16;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "subprogram", "functionDefinitionStatement", "classDefinitionStatement", 
			"classInitStatement", "variableDefinitionStatement", "variableDefinitionList", 
			"variableDefinitionSingle", "statement", "block", "expression", "expressionList", 
			"parameterList", "constant", "newformat", "nonarraytype", "type"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'('", "')'", "'{'", "'}'", "','", "'='", "'['", "']'", 
			"'.'", "'++'", "'--'", "'!'", "'~'", "'+'", "'-'", "'*'", "'/'", "'%'", 
			"'>>'", "'<<'", "'>'", "'<'", "'>='", "'<='", "'=='", "'!='", "'&'", 
			"'|'", "'^'", "'&&'", "'||'", "'void'", "'bool'", "'int'", "'string'", 
			"'new'", "'class'", "'null'", "'true'", "'false'", "'this'", "'if'", 
			"'else'", "'for'", "'while'", "'break'", "'continue'", "'return'", null, 
			"'->'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, "VOID", "BOOL", 
			"INT", "STRING", "NEW", "CLASS", "NULL", "TRUE", "FALSE", "THIS", "IF", 
			"ELSE", "FOR", "WHILE", "BREAK", "CONTINUE", "RETURN", "LAMBDA1", "LAMBDA2", 
			"INT_CONSTANT", "STRING_CONSTANT", "IDENTIFIER", "WS", "LINE_COMMENT", 
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
		public List<SubprogramContext> subprogram() {
			return getRuleContexts(SubprogramContext.class);
		}
		public SubprogramContext subprogram(int i) {
			return getRuleContext(SubprogramContext.class,i);
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
			setState(37);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,0,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(34);
					subprogram();
					}
					} 
				}
				setState(39);
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

	public static class SubprogramContext extends ParserRuleContext {
		public FunctionDefinitionStatementContext functionDefinitionStatement() {
			return getRuleContext(FunctionDefinitionStatementContext.class,0);
		}
		public ClassDefinitionStatementContext classDefinitionStatement() {
			return getRuleContext(ClassDefinitionStatementContext.class,0);
		}
		public VariableDefinitionStatementContext variableDefinitionStatement() {
			return getRuleContext(VariableDefinitionStatementContext.class,0);
		}
		public SubprogramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_subprogram; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSubprogram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSubprogram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSubprogram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SubprogramContext subprogram() throws RecognitionException {
		SubprogramContext _localctx = new SubprogramContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_subprogram);
		try {
			setState(44);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(40);
				functionDefinitionStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(41);
				classDefinitionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(42);
				variableDefinitionStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(43);
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
			setState(48);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(46);
				match(VOID);
				}
				break;
			case 2:
				{
				setState(47);
				type(0);
				}
				break;
			}
			setState(50);
			match(IDENTIFIER);
			setState(51);
			match(T__1);
			setState(53);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				{
				setState(52);
				parameterList();
				}
				break;
			}
			setState(55);
			match(T__2);
			setState(56);
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
		public List<ClassInitStatementContext> classInitStatement() {
			return getRuleContexts(ClassInitStatementContext.class);
		}
		public ClassInitStatementContext classInitStatement(int i) {
			return getRuleContext(ClassInitStatementContext.class,i);
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
			setState(58);
			match(CLASS);
			setState(59);
			match(IDENTIFIER);
			setState(60);
			match(T__3);
			setState(66);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					setState(64);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
					case 1:
						{
						setState(61);
						functionDefinitionStatement();
						}
						break;
					case 2:
						{
						setState(62);
						variableDefinitionStatement();
						}
						break;
					case 3:
						{
						setState(63);
						classInitStatement();
						}
						break;
					}
					} 
				}
				setState(68);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
			}
			setState(69);
			match(T__4);
			setState(70);
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

	public static class ClassInitStatementContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(MxParser.IDENTIFIER, 0); }
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ClassInitStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classInitStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClassInitStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClassInitStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitClassInitStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassInitStatementContext classInitStatement() throws RecognitionException {
		ClassInitStatementContext _localctx = new ClassInitStatementContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_classInitStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(72);
			match(IDENTIFIER);
			setState(73);
			match(T__1);
			setState(74);
			parameterList();
			setState(75);
			match(T__2);
			setState(76);
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
			setState(78);
			variableDefinitionList();
			setState(79);
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
			setState(81);
			type(0);
			setState(82);
			variableDefinitionSingle();
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(83);
				match(T__5);
				setState(84);
				variableDefinitionSingle();
				}
				}
				setState(89);
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
			setState(90);
			match(IDENTIFIER);
			setState(93);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__6) {
				{
				setState(91);
				match(T__6);
				setState(92);
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
	public static class State_emptyContext extends StatementContext {
		public State_emptyContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_empty(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_empty(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_empty(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_continueContext extends StatementContext {
		public TerminalNode CONTINUE() { return getToken(MxParser.CONTINUE, 0); }
		public State_continueContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_continue(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_continue(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_continue(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_breakContext extends StatementContext {
		public TerminalNode BREAK() { return getToken(MxParser.BREAK, 0); }
		public State_breakContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_break(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_break(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_break(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_returnContext extends StatementContext {
		public TerminalNode RETURN() { return getToken(MxParser.RETURN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public State_returnContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_return(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_return(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_return(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_ifContext extends StatementContext {
		public ExpressionContext condition;
		public StatementContext ifstate;
		public StatementContext elsestate;
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
		public TerminalNode ELSE() { return getToken(MxParser.ELSE, 0); }
		public State_ifContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_if(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_if(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_if(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_whileContext extends StatementContext {
		public ExpressionContext condition;
		public StatementContext whilestate;
		public TerminalNode WHILE() { return getToken(MxParser.WHILE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public State_whileContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_while(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_while(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_while(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_forContext extends StatementContext {
		public ExpressionContext initvar;
		public ExpressionContext condition;
		public ExpressionContext update;
		public StatementContext forstate;
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
		public VariableDefinitionListContext variableDefinitionList() {
			return getRuleContext(VariableDefinitionListContext.class,0);
		}
		public State_forContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_for(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_for(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_for(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_blockContext extends StatementContext {
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public State_blockContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_block(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_block(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_block(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_expressionContext extends StatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public State_expressionContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_expression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_expression(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class State_vardefContext extends StatementContext {
		public VariableDefinitionStatementContext variableDefinitionStatement() {
			return getRuleContext(VariableDefinitionStatementContext.class,0);
		}
		public State_vardefContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterState_vardef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitState_vardef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitState_vardef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_statement);
		int _la;
		try {
			setState(138);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				_localctx = new State_expressionContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(95);
				expression(0);
				setState(96);
				match(T__0);
				}
				break;
			case 2:
				_localctx = new State_blockContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(98);
				block();
				}
				break;
			case 3:
				_localctx = new State_emptyContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(99);
				match(T__0);
				}
				break;
			case 4:
				_localctx = new State_vardefContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(100);
				variableDefinitionStatement();
				}
				break;
			case 5:
				_localctx = new State_ifContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(101);
				match(IF);
				setState(102);
				match(T__1);
				setState(103);
				((State_ifContext)_localctx).condition = expression(0);
				setState(104);
				match(T__2);
				setState(105);
				((State_ifContext)_localctx).ifstate = statement();
				setState(108);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
				case 1:
					{
					setState(106);
					match(ELSE);
					setState(107);
					((State_ifContext)_localctx).elsestate = statement();
					}
					break;
				}
				}
				break;
			case 6:
				_localctx = new State_forContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(110);
				match(FOR);
				setState(111);
				match(T__1);
				setState(114);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
				case 1:
					{
					setState(112);
					((State_forContext)_localctx).initvar = expression(0);
					}
					break;
				case 2:
					{
					setState(113);
					variableDefinitionList();
					}
					break;
				}
				setState(116);
				match(T__0);
				setState(117);
				((State_forContext)_localctx).condition = expression(0);
				setState(118);
				match(T__0);
				setState(119);
				((State_forContext)_localctx).update = expression(0);
				setState(120);
				match(T__2);
				setState(121);
				((State_forContext)_localctx).forstate = statement();
				}
				break;
			case 7:
				_localctx = new State_whileContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(123);
				match(WHILE);
				setState(124);
				match(T__1);
				setState(125);
				((State_whileContext)_localctx).condition = expression(0);
				setState(126);
				match(T__2);
				setState(127);
				((State_whileContext)_localctx).whilestate = statement();
				}
				break;
			case 8:
				_localctx = new State_breakContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(129);
				match(BREAK);
				setState(130);
				match(T__0);
				}
				break;
			case 9:
				_localctx = new State_continueContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(131);
				match(CONTINUE);
				setState(132);
				match(T__0);
				}
				break;
			case 10:
				_localctx = new State_returnContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(133);
				match(RETURN);
				setState(135);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__7) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA1) | (1L << INT_CONSTANT) | (1L << STRING_CONSTANT) | (1L << IDENTIFIER))) != 0)) {
					{
					setState(134);
					expression(0);
					}
				}

				setState(137);
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
			setState(140);
			match(T__3);
			setState(144);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(141);
					statement();
					}
					} 
				}
				setState(146);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			}
			setState(147);
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
	public static class Expr_lambdaContext extends ExpressionContext {
		public TerminalNode LAMBDA2() { return getToken(MxParser.LAMBDA2, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
		}
		public TerminalNode LAMBDA1() { return getToken(MxParser.LAMBDA1, 0); }
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
	public static class Expr_singleContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Expr_singleContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpr_single(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpr_single(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExpr_single(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Expr_assignContext extends ExpressionContext {
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
	public static class Expr_functionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
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
			setState(178);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IDENTIFIER:
				{
				_localctx = new Expr_IDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(150);
				match(IDENTIFIER);
				}
				break;
			case INT_CONSTANT:
			case STRING_CONSTANT:
				{
				_localctx = new Expr_constContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(151);
				constant();
				}
				break;
			case THIS:
				{
				_localctx = new Expr_THISContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(152);
				match(THIS);
				}
				break;
			case NEW:
				{
				_localctx = new Expr_newContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(153);
				match(NEW);
				setState(154);
				newformat();
				}
				break;
			case T__1:
				{
				_localctx = new Expr_bracketContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(155);
				match(T__1);
				setState(156);
				expression(0);
				setState(157);
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
				_localctx = new Expr_binaryContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(159);
				((Expr_binaryContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15))) != 0)) ) {
					((Expr_binaryContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(160);
				expression(10);
				}
				break;
			case T__7:
			case LAMBDA1:
				{
				_localctx = new Expr_lambdaContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(164);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case LAMBDA1:
					{
					setState(161);
					match(LAMBDA1);
					}
					break;
				case T__7:
					{
					setState(162);
					match(T__7);
					setState(163);
					match(T__8);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(170);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__1) {
					{
					setState(166);
					match(T__1);
					setState(167);
					parameterList();
					setState(168);
					match(T__2);
					}
				}

				setState(172);
				match(LAMBDA2);
				setState(173);
				block();
				setState(174);
				match(T__1);
				setState(175);
				expressionList();
				setState(176);
				match(T__2);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(222);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,18,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(220);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
					case 1:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(180);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(181);
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
						setState(182);
						((Expr_binaryContext)_localctx).operand2 = expression(10);
						}
						break;
					case 2:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(183);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(184);
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
						setState(185);
						((Expr_binaryContext)_localctx).operand2 = expression(9);
						}
						break;
					case 3:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(186);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(187);
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
						setState(188);
						((Expr_binaryContext)_localctx).operand2 = expression(8);
						}
						break;
					case 4:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(189);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(190);
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
						setState(191);
						((Expr_binaryContext)_localctx).operand2 = expression(7);
						}
						break;
					case 5:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(192);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(193);
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
						setState(194);
						((Expr_binaryContext)_localctx).operand2 = expression(6);
						}
						break;
					case 6:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(195);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(196);
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
						setState(197);
						((Expr_binaryContext)_localctx).operand2 = expression(5);
						}
						break;
					case 7:
						{
						_localctx = new Expr_binaryContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_binaryContext)_localctx).operand1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(198);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(199);
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
						setState(200);
						((Expr_binaryContext)_localctx).operand2 = expression(4);
						}
						break;
					case 8:
						{
						_localctx = new Expr_assignContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(201);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(202);
						match(T__6);
						setState(203);
						((Expr_assignContext)_localctx).operand2 = expression(2);
						}
						break;
					case 9:
						{
						_localctx = new Expr_arrayContext(new ExpressionContext(_parentctx, _parentState));
						((Expr_arrayContext)_localctx).array = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(204);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(205);
						match(T__7);
						setState(206);
						expression(0);
						setState(207);
						match(T__8);
						}
						break;
					case 10:
						{
						_localctx = new Expr_memberContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(209);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(210);
						match(T__9);
						setState(211);
						match(IDENTIFIER);
						}
						break;
					case 11:
						{
						_localctx = new Expr_functionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(212);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(213);
						match(T__1);
						setState(215);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__7) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << NEW) | (1L << THIS) | (1L << LAMBDA1) | (1L << INT_CONSTANT) | (1L << STRING_CONSTANT) | (1L << IDENTIFIER))) != 0)) {
							{
							setState(214);
							expressionList();
							}
						}

						setState(217);
						match(T__2);
						}
						break;
					case 12:
						{
						_localctx = new Expr_singleContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(218);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(219);
						((Expr_singleContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__10 || _la==T__11) ) {
							((Expr_singleContext)_localctx).op = (Token)_errHandler.recoverInline(this);
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
				setState(224);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,18,_ctx);
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
			setState(225);
			expression(0);
			setState(230);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(226);
				match(T__5);
				setState(227);
				expression(0);
				}
				}
				setState(232);
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
		enterRule(_localctx, 24, RULE_parameterList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(233);
			type(0);
			setState(234);
			match(IDENTIFIER);
			setState(241);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5) {
				{
				{
				setState(235);
				match(T__5);
				setState(236);
				type(0);
				setState(237);
				match(IDENTIFIER);
				}
				}
				setState(243);
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
		public TerminalNode INT_CONSTANT() { return getToken(MxParser.INT_CONSTANT, 0); }
		public TerminalNode STRING_CONSTANT() { return getToken(MxParser.STRING_CONSTANT, 0); }
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
		enterRule(_localctx, 26, RULE_constant);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(244);
			_la = _input.LA(1);
			if ( !(_la==INT_CONSTANT || _la==STRING_CONSTANT) ) {
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
		enterRule(_localctx, 28, RULE_newformat);
		try {
			int _alt;
			setState(290);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
			case 1:
				_localctx = new Newformat_errorContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(246);
				nonarraytype();
				setState(251); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(247);
						match(T__7);
						setState(248);
						expression(0);
						setState(249);
						match(T__8);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(253); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(257); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(255);
						match(T__7);
						setState(256);
						match(T__8);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(259); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,22,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(265); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(261);
						match(T__7);
						setState(262);
						expression(0);
						setState(263);
						match(T__8);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(267); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 2:
				_localctx = new Newformat_multiArrayContext(_localctx);
				enterOuterAlt(_localctx, 2);
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
						match(T__7);
						setState(271);
						expression(0);
						setState(272);
						match(T__8);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(276); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(282);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(278);
						match(T__7);
						setState(279);
						match(T__8);
						}
						} 
					}
					setState(284);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				}
				}
				break;
			case 3:
				_localctx = new Newformat_classContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(285);
				nonarraytype();
				setState(286);
				match(T__1);
				setState(287);
				match(T__2);
				}
				break;
			case 4:
				_localctx = new Newformat_normalContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(289);
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
		public TerminalNode BOOL() { return getToken(MxParser.BOOL, 0); }
		public TerminalNode INT() { return getToken(MxParser.INT, 0); }
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
		enterRule(_localctx, 30, RULE_nonarraytype);
		try {
			setState(297);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(293);
				match(BOOL);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(294);
				match(INT);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(295);
				match(STRING);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(296);
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
		public NonarraytypeContext nonarraytype() {
			return getRuleContext(NonarraytypeContext.class,0);
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
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
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
		int _startState = 32;
		enterRecursionRule(_localctx, 32, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			_localctx = new Type_arrayContext(_localctx);
			_ctx = _localctx;
			_prevctx = _localctx;

			setState(300);
			nonarraytype();
			}
			_ctx.stop = _input.LT(-1);
			setState(307);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new Type_basicContext(new TypeContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(302);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(303);
					match(T__7);
					setState(304);
					match(T__8);
					}
					} 
				}
				setState(309);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
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
		case 16:
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
			return precpred(_ctx, 13);
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
		"\u0004\u00019\u0137\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0001\u0000\u0005\u0000$\b\u0000\n\u0000\f\u0000"+
		"\'\t\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0003\u0001"+
		"-\b\u0001\u0001\u0002\u0001\u0002\u0003\u00021\b\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0003\u00026\b\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0005\u0003A\b\u0003\n\u0003\f\u0003D\t\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0005\u0006V\b\u0006\n\u0006\f\u0006Y\t"+
		"\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0003\u0007^\b\u0007\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0003\bm\b\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0003\bs\b\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0003\b\u0088\b\b\u0001\b\u0003\b\u008b\b\b"+
		"\u0001\t\u0001\t\u0005\t\u008f\b\t\n\t\f\t\u0092\t\t\u0001\t\u0001\t\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0003\n\u00a5\b\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0003\n\u00ab\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0003\n\u00b3\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0003\n\u00d8\b\n\u0001\n\u0001\n\u0001\n\u0005\n\u00dd"+
		"\b\n\n\n\f\n\u00e0\t\n\u0001\u000b\u0001\u000b\u0001\u000b\u0005\u000b"+
		"\u00e5\b\u000b\n\u000b\f\u000b\u00e8\t\u000b\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0005\f\u00f0\b\f\n\f\f\f\u00f3\t\f\u0001\r\u0001\r"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0004\u000e"+
		"\u00fc\b\u000e\u000b\u000e\f\u000e\u00fd\u0001\u000e\u0001\u000e\u0004"+
		"\u000e\u0102\b\u000e\u000b\u000e\f\u000e\u0103\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0004\u000e\u010a\b\u000e\u000b\u000e\f\u000e"+
		"\u010b\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0004"+
		"\u000e\u0113\b\u000e\u000b\u000e\f\u000e\u0114\u0001\u000e\u0001\u000e"+
		"\u0005\u000e\u0119\b\u000e\n\u000e\f\u000e\u011c\t\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0003\u000e\u0123\b\u000e\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u012a"+
		"\b\u000f\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0005\u0010\u0132\b\u0010\n\u0010\f\u0010\u0135\t\u0010\u0001\u0010"+
		"\u0000\u0002\u0014 \u0011\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012"+
		"\u0014\u0016\u0018\u001a\u001c\u001e \u0000\n\u0001\u0000\u000b\u0010"+
		"\u0001\u0000\u0011\u0013\u0001\u0000\u000f\u0010\u0001\u0000\u0014\u0015"+
		"\u0001\u0000\u0016\u0019\u0001\u0000\u001a\u001b\u0001\u0000\u001c\u001e"+
		"\u0001\u0000\u001f \u0001\u0000\u000b\f\u0001\u000045\u0161\u0000%\u0001"+
		"\u0000\u0000\u0000\u0002,\u0001\u0000\u0000\u0000\u00040\u0001\u0000\u0000"+
		"\u0000\u0006:\u0001\u0000\u0000\u0000\bH\u0001\u0000\u0000\u0000\nN\u0001"+
		"\u0000\u0000\u0000\fQ\u0001\u0000\u0000\u0000\u000eZ\u0001\u0000\u0000"+
		"\u0000\u0010\u008a\u0001\u0000\u0000\u0000\u0012\u008c\u0001\u0000\u0000"+
		"\u0000\u0014\u00b2\u0001\u0000\u0000\u0000\u0016\u00e1\u0001\u0000\u0000"+
		"\u0000\u0018\u00e9\u0001\u0000\u0000\u0000\u001a\u00f4\u0001\u0000\u0000"+
		"\u0000\u001c\u0122\u0001\u0000\u0000\u0000\u001e\u0129\u0001\u0000\u0000"+
		"\u0000 \u012b\u0001\u0000\u0000\u0000\"$\u0003\u0002\u0001\u0000#\"\u0001"+
		"\u0000\u0000\u0000$\'\u0001\u0000\u0000\u0000%#\u0001\u0000\u0000\u0000"+
		"%&\u0001\u0000\u0000\u0000&\u0001\u0001\u0000\u0000\u0000\'%\u0001\u0000"+
		"\u0000\u0000(-\u0003\u0004\u0002\u0000)-\u0003\u0006\u0003\u0000*-\u0003"+
		"\n\u0005\u0000+-\u0005\u0001\u0000\u0000,(\u0001\u0000\u0000\u0000,)\u0001"+
		"\u0000\u0000\u0000,*\u0001\u0000\u0000\u0000,+\u0001\u0000\u0000\u0000"+
		"-\u0003\u0001\u0000\u0000\u0000.1\u0005!\u0000\u0000/1\u0003 \u0010\u0000"+
		"0.\u0001\u0000\u0000\u00000/\u0001\u0000\u0000\u000012\u0001\u0000\u0000"+
		"\u000023\u00056\u0000\u000035\u0005\u0002\u0000\u000046\u0003\u0018\f"+
		"\u000054\u0001\u0000\u0000\u000056\u0001\u0000\u0000\u000067\u0001\u0000"+
		"\u0000\u000078\u0005\u0003\u0000\u000089\u0003\u0012\t\u00009\u0005\u0001"+
		"\u0000\u0000\u0000:;\u0005&\u0000\u0000;<\u00056\u0000\u0000<B\u0005\u0004"+
		"\u0000\u0000=A\u0003\u0004\u0002\u0000>A\u0003\n\u0005\u0000?A\u0003\b"+
		"\u0004\u0000@=\u0001\u0000\u0000\u0000@>\u0001\u0000\u0000\u0000@?\u0001"+
		"\u0000\u0000\u0000AD\u0001\u0000\u0000\u0000B@\u0001\u0000\u0000\u0000"+
		"BC\u0001\u0000\u0000\u0000CE\u0001\u0000\u0000\u0000DB\u0001\u0000\u0000"+
		"\u0000EF\u0005\u0005\u0000\u0000FG\u0005\u0001\u0000\u0000G\u0007\u0001"+
		"\u0000\u0000\u0000HI\u00056\u0000\u0000IJ\u0005\u0002\u0000\u0000JK\u0003"+
		"\u0018\f\u0000KL\u0005\u0003\u0000\u0000LM\u0003\u0012\t\u0000M\t\u0001"+
		"\u0000\u0000\u0000NO\u0003\f\u0006\u0000OP\u0005\u0001\u0000\u0000P\u000b"+
		"\u0001\u0000\u0000\u0000QR\u0003 \u0010\u0000RW\u0003\u000e\u0007\u0000"+
		"ST\u0005\u0006\u0000\u0000TV\u0003\u000e\u0007\u0000US\u0001\u0000\u0000"+
		"\u0000VY\u0001\u0000\u0000\u0000WU\u0001\u0000\u0000\u0000WX\u0001\u0000"+
		"\u0000\u0000X\r\u0001\u0000\u0000\u0000YW\u0001\u0000\u0000\u0000Z]\u0005"+
		"6\u0000\u0000[\\\u0005\u0007\u0000\u0000\\^\u0003\u0014\n\u0000][\u0001"+
		"\u0000\u0000\u0000]^\u0001\u0000\u0000\u0000^\u000f\u0001\u0000\u0000"+
		"\u0000_`\u0003\u0014\n\u0000`a\u0005\u0001\u0000\u0000a\u008b\u0001\u0000"+
		"\u0000\u0000b\u008b\u0003\u0012\t\u0000c\u008b\u0005\u0001\u0000\u0000"+
		"d\u008b\u0003\n\u0005\u0000ef\u0005+\u0000\u0000fg\u0005\u0002\u0000\u0000"+
		"gh\u0003\u0014\n\u0000hi\u0005\u0003\u0000\u0000il\u0003\u0010\b\u0000"+
		"jk\u0005,\u0000\u0000km\u0003\u0010\b\u0000lj\u0001\u0000\u0000\u0000"+
		"lm\u0001\u0000\u0000\u0000m\u008b\u0001\u0000\u0000\u0000no\u0005-\u0000"+
		"\u0000or\u0005\u0002\u0000\u0000ps\u0003\u0014\n\u0000qs\u0003\f\u0006"+
		"\u0000rp\u0001\u0000\u0000\u0000rq\u0001\u0000\u0000\u0000st\u0001\u0000"+
		"\u0000\u0000tu\u0005\u0001\u0000\u0000uv\u0003\u0014\n\u0000vw\u0005\u0001"+
		"\u0000\u0000wx\u0003\u0014\n\u0000xy\u0005\u0003\u0000\u0000yz\u0003\u0010"+
		"\b\u0000z\u008b\u0001\u0000\u0000\u0000{|\u0005.\u0000\u0000|}\u0005\u0002"+
		"\u0000\u0000}~\u0003\u0014\n\u0000~\u007f\u0005\u0003\u0000\u0000\u007f"+
		"\u0080\u0003\u0010\b\u0000\u0080\u008b\u0001\u0000\u0000\u0000\u0081\u0082"+
		"\u0005/\u0000\u0000\u0082\u008b\u0005\u0001\u0000\u0000\u0083\u0084\u0005"+
		"0\u0000\u0000\u0084\u008b\u0005\u0001\u0000\u0000\u0085\u0087\u00051\u0000"+
		"\u0000\u0086\u0088\u0003\u0014\n\u0000\u0087\u0086\u0001\u0000\u0000\u0000"+
		"\u0087\u0088\u0001\u0000\u0000\u0000\u0088\u0089\u0001\u0000\u0000\u0000"+
		"\u0089\u008b\u0005\u0001\u0000\u0000\u008a_\u0001\u0000\u0000\u0000\u008a"+
		"b\u0001\u0000\u0000\u0000\u008ac\u0001\u0000\u0000\u0000\u008ad\u0001"+
		"\u0000\u0000\u0000\u008ae\u0001\u0000\u0000\u0000\u008an\u0001\u0000\u0000"+
		"\u0000\u008a{\u0001\u0000\u0000\u0000\u008a\u0081\u0001\u0000\u0000\u0000"+
		"\u008a\u0083\u0001\u0000\u0000\u0000\u008a\u0085\u0001\u0000\u0000\u0000"+
		"\u008b\u0011\u0001\u0000\u0000\u0000\u008c\u0090\u0005\u0004\u0000\u0000"+
		"\u008d\u008f\u0003\u0010\b\u0000\u008e\u008d\u0001\u0000\u0000\u0000\u008f"+
		"\u0092\u0001\u0000\u0000\u0000\u0090\u008e\u0001\u0000\u0000\u0000\u0090"+
		"\u0091\u0001\u0000\u0000\u0000\u0091\u0093\u0001\u0000\u0000\u0000\u0092"+
		"\u0090\u0001\u0000\u0000\u0000\u0093\u0094\u0005\u0005\u0000\u0000\u0094"+
		"\u0013\u0001\u0000\u0000\u0000\u0095\u0096\u0006\n\uffff\uffff\u0000\u0096"+
		"\u00b3\u00056\u0000\u0000\u0097\u00b3\u0003\u001a\r\u0000\u0098\u00b3"+
		"\u0005*\u0000\u0000\u0099\u009a\u0005%\u0000\u0000\u009a\u00b3\u0003\u001c"+
		"\u000e\u0000\u009b\u009c\u0005\u0002\u0000\u0000\u009c\u009d\u0003\u0014"+
		"\n\u0000\u009d\u009e\u0005\u0003\u0000\u0000\u009e\u00b3\u0001\u0000\u0000"+
		"\u0000\u009f\u00a0\u0007\u0000\u0000\u0000\u00a0\u00b3\u0003\u0014\n\n"+
		"\u00a1\u00a5\u00052\u0000\u0000\u00a2\u00a3\u0005\b\u0000\u0000\u00a3"+
		"\u00a5\u0005\t\u0000\u0000\u00a4\u00a1\u0001\u0000\u0000\u0000\u00a4\u00a2"+
		"\u0001\u0000\u0000\u0000\u00a5\u00aa\u0001\u0000\u0000\u0000\u00a6\u00a7"+
		"\u0005\u0002\u0000\u0000\u00a7\u00a8\u0003\u0018\f\u0000\u00a8\u00a9\u0005"+
		"\u0003\u0000\u0000\u00a9\u00ab\u0001\u0000\u0000\u0000\u00aa\u00a6\u0001"+
		"\u0000\u0000\u0000\u00aa\u00ab\u0001\u0000\u0000\u0000\u00ab\u00ac\u0001"+
		"\u0000\u0000\u0000\u00ac\u00ad\u00053\u0000\u0000\u00ad\u00ae\u0003\u0012"+
		"\t\u0000\u00ae\u00af\u0005\u0002\u0000\u0000\u00af\u00b0\u0003\u0016\u000b"+
		"\u0000\u00b0\u00b1\u0005\u0003\u0000\u0000\u00b1\u00b3\u0001\u0000\u0000"+
		"\u0000\u00b2\u0095\u0001\u0000\u0000\u0000\u00b2\u0097\u0001\u0000\u0000"+
		"\u0000\u00b2\u0098\u0001\u0000\u0000\u0000\u00b2\u0099\u0001\u0000\u0000"+
		"\u0000\u00b2\u009b\u0001\u0000\u0000\u0000\u00b2\u009f\u0001\u0000\u0000"+
		"\u0000\u00b2\u00a4\u0001\u0000\u0000\u0000\u00b3\u00de\u0001\u0000\u0000"+
		"\u0000\u00b4\u00b5\n\t\u0000\u0000\u00b5\u00b6\u0007\u0001\u0000\u0000"+
		"\u00b6\u00dd\u0003\u0014\n\n\u00b7\u00b8\n\b\u0000\u0000\u00b8\u00b9\u0007"+
		"\u0002\u0000\u0000\u00b9\u00dd\u0003\u0014\n\t\u00ba\u00bb\n\u0007\u0000"+
		"\u0000\u00bb\u00bc\u0007\u0003\u0000\u0000\u00bc\u00dd\u0003\u0014\n\b"+
		"\u00bd\u00be\n\u0006\u0000\u0000\u00be\u00bf\u0007\u0004\u0000\u0000\u00bf"+
		"\u00dd\u0003\u0014\n\u0007\u00c0\u00c1\n\u0005\u0000\u0000\u00c1\u00c2"+
		"\u0007\u0005\u0000\u0000\u00c2\u00dd\u0003\u0014\n\u0006\u00c3\u00c4\n"+
		"\u0004\u0000\u0000\u00c4\u00c5\u0007\u0006\u0000\u0000\u00c5\u00dd\u0003"+
		"\u0014\n\u0005\u00c6\u00c7\n\u0003\u0000\u0000\u00c7\u00c8\u0007\u0007"+
		"\u0000\u0000\u00c8\u00dd\u0003\u0014\n\u0004\u00c9\u00ca\n\u0002\u0000"+
		"\u0000\u00ca\u00cb\u0005\u0007\u0000\u0000\u00cb\u00dd\u0003\u0014\n\u0002"+
		"\u00cc\u00cd\n\u0010\u0000\u0000\u00cd\u00ce\u0005\b\u0000\u0000\u00ce"+
		"\u00cf\u0003\u0014\n\u0000\u00cf\u00d0\u0005\t\u0000\u0000\u00d0\u00dd"+
		"\u0001\u0000\u0000\u0000\u00d1\u00d2\n\r\u0000\u0000\u00d2\u00d3\u0005"+
		"\n\u0000\u0000\u00d3\u00dd\u00056\u0000\u0000\u00d4\u00d5\n\f\u0000\u0000"+
		"\u00d5\u00d7\u0005\u0002\u0000\u0000\u00d6\u00d8\u0003\u0016\u000b\u0000"+
		"\u00d7\u00d6\u0001\u0000\u0000\u0000\u00d7\u00d8\u0001\u0000\u0000\u0000"+
		"\u00d8\u00d9\u0001\u0000\u0000\u0000\u00d9\u00dd\u0005\u0003\u0000\u0000"+
		"\u00da\u00db\n\u000b\u0000\u0000\u00db\u00dd\u0007\b\u0000\u0000\u00dc"+
		"\u00b4\u0001\u0000\u0000\u0000\u00dc\u00b7\u0001\u0000\u0000\u0000\u00dc"+
		"\u00ba\u0001\u0000\u0000\u0000\u00dc\u00bd\u0001\u0000\u0000\u0000\u00dc"+
		"\u00c0\u0001\u0000\u0000\u0000\u00dc\u00c3\u0001\u0000\u0000\u0000\u00dc"+
		"\u00c6\u0001\u0000\u0000\u0000\u00dc\u00c9\u0001\u0000\u0000\u0000\u00dc"+
		"\u00cc\u0001\u0000\u0000\u0000\u00dc\u00d1\u0001\u0000\u0000\u0000\u00dc"+
		"\u00d4\u0001\u0000\u0000\u0000\u00dc\u00da\u0001\u0000\u0000\u0000\u00dd"+
		"\u00e0\u0001\u0000\u0000\u0000\u00de\u00dc\u0001\u0000\u0000\u0000\u00de"+
		"\u00df\u0001\u0000\u0000\u0000\u00df\u0015\u0001\u0000\u0000\u0000\u00e0"+
		"\u00de\u0001\u0000\u0000\u0000\u00e1\u00e6\u0003\u0014\n\u0000\u00e2\u00e3"+
		"\u0005\u0006\u0000\u0000\u00e3\u00e5\u0003\u0014\n\u0000\u00e4\u00e2\u0001"+
		"\u0000\u0000\u0000\u00e5\u00e8\u0001\u0000\u0000\u0000\u00e6\u00e4\u0001"+
		"\u0000\u0000\u0000\u00e6\u00e7\u0001\u0000\u0000\u0000\u00e7\u0017\u0001"+
		"\u0000\u0000\u0000\u00e8\u00e6\u0001\u0000\u0000\u0000\u00e9\u00ea\u0003"+
		" \u0010\u0000\u00ea\u00f1\u00056\u0000\u0000\u00eb\u00ec\u0005\u0006\u0000"+
		"\u0000\u00ec\u00ed\u0003 \u0010\u0000\u00ed\u00ee\u00056\u0000\u0000\u00ee"+
		"\u00f0\u0001\u0000\u0000\u0000\u00ef\u00eb\u0001\u0000\u0000\u0000\u00f0"+
		"\u00f3\u0001\u0000\u0000\u0000\u00f1\u00ef\u0001\u0000\u0000\u0000\u00f1"+
		"\u00f2\u0001\u0000\u0000\u0000\u00f2\u0019\u0001\u0000\u0000\u0000\u00f3"+
		"\u00f1\u0001\u0000\u0000\u0000\u00f4\u00f5\u0007\t\u0000\u0000\u00f5\u001b"+
		"\u0001\u0000\u0000\u0000\u00f6\u00fb\u0003\u001e\u000f\u0000\u00f7\u00f8"+
		"\u0005\b\u0000\u0000\u00f8\u00f9\u0003\u0014\n\u0000\u00f9\u00fa\u0005"+
		"\t\u0000\u0000\u00fa\u00fc\u0001\u0000\u0000\u0000\u00fb\u00f7\u0001\u0000"+
		"\u0000\u0000\u00fc\u00fd\u0001\u0000\u0000\u0000\u00fd\u00fb\u0001\u0000"+
		"\u0000\u0000\u00fd\u00fe\u0001\u0000\u0000\u0000\u00fe\u0101\u0001\u0000"+
		"\u0000\u0000\u00ff\u0100\u0005\b\u0000\u0000\u0100\u0102\u0005\t\u0000"+
		"\u0000\u0101\u00ff\u0001\u0000\u0000\u0000\u0102\u0103\u0001\u0000\u0000"+
		"\u0000\u0103\u0101\u0001\u0000\u0000\u0000\u0103\u0104\u0001\u0000\u0000"+
		"\u0000\u0104\u0109\u0001\u0000\u0000\u0000\u0105\u0106\u0005\b\u0000\u0000"+
		"\u0106\u0107\u0003\u0014\n\u0000\u0107\u0108\u0005\t\u0000\u0000\u0108"+
		"\u010a\u0001\u0000\u0000\u0000\u0109\u0105\u0001\u0000\u0000\u0000\u010a"+
		"\u010b\u0001\u0000\u0000\u0000\u010b\u0109\u0001\u0000\u0000\u0000\u010b"+
		"\u010c\u0001\u0000\u0000\u0000\u010c\u0123\u0001\u0000\u0000\u0000\u010d"+
		"\u0112\u0003\u001e\u000f\u0000\u010e\u010f\u0005\b\u0000\u0000\u010f\u0110"+
		"\u0003\u0014\n\u0000\u0110\u0111\u0005\t\u0000\u0000\u0111\u0113\u0001"+
		"\u0000\u0000\u0000\u0112\u010e\u0001\u0000\u0000\u0000\u0113\u0114\u0001"+
		"\u0000\u0000\u0000\u0114\u0112\u0001\u0000\u0000\u0000\u0114\u0115\u0001"+
		"\u0000\u0000\u0000\u0115\u011a\u0001\u0000\u0000\u0000\u0116\u0117\u0005"+
		"\b\u0000\u0000\u0117\u0119\u0005\t\u0000\u0000\u0118\u0116\u0001\u0000"+
		"\u0000\u0000\u0119\u011c\u0001\u0000\u0000\u0000\u011a\u0118\u0001\u0000"+
		"\u0000\u0000\u011a\u011b\u0001\u0000\u0000\u0000\u011b\u0123\u0001\u0000"+
		"\u0000\u0000\u011c\u011a\u0001\u0000\u0000\u0000\u011d\u011e\u0003\u001e"+
		"\u000f\u0000\u011e\u011f\u0005\u0002\u0000\u0000\u011f\u0120\u0005\u0003"+
		"\u0000\u0000\u0120\u0123\u0001\u0000\u0000\u0000\u0121\u0123\u0003\u001e"+
		"\u000f\u0000\u0122\u00f6\u0001\u0000\u0000\u0000\u0122\u010d\u0001\u0000"+
		"\u0000\u0000\u0122\u011d\u0001\u0000\u0000\u0000\u0122\u0121\u0001\u0000"+
		"\u0000\u0000\u0123\u001d\u0001\u0000\u0000\u0000\u0124\u012a\u0001\u0000"+
		"\u0000\u0000\u0125\u012a\u0005\"\u0000\u0000\u0126\u012a\u0005#\u0000"+
		"\u0000\u0127\u012a\u0005$\u0000\u0000\u0128\u012a\u00056\u0000\u0000\u0129"+
		"\u0124\u0001\u0000\u0000\u0000\u0129\u0125\u0001\u0000\u0000\u0000\u0129"+
		"\u0126\u0001\u0000\u0000\u0000\u0129\u0127\u0001\u0000\u0000\u0000\u0129"+
		"\u0128\u0001\u0000\u0000\u0000\u012a\u001f\u0001\u0000\u0000\u0000\u012b"+
		"\u012c\u0006\u0010\uffff\uffff\u0000\u012c\u012d\u0003\u001e\u000f\u0000"+
		"\u012d\u0133\u0001\u0000\u0000\u0000\u012e\u012f\n\u0001\u0000\u0000\u012f"+
		"\u0130\u0005\b\u0000\u0000\u0130\u0132\u0005\t\u0000\u0000\u0131\u012e"+
		"\u0001\u0000\u0000\u0000\u0132\u0135\u0001\u0000\u0000\u0000\u0133\u0131"+
		"\u0001\u0000\u0000\u0000\u0133\u0134\u0001\u0000\u0000\u0000\u0134!\u0001"+
		"\u0000\u0000\u0000\u0135\u0133\u0001\u0000\u0000\u0000\u001d%,05@BW]l"+
		"r\u0087\u008a\u0090\u00a4\u00aa\u00b2\u00d7\u00dc\u00de\u00e6\u00f1\u00fd"+
		"\u0103\u010b\u0114\u011a\u0122\u0129\u0133";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}