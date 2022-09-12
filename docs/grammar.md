# Lexical Grammar

The source text of an Zig file is first converted into a sequence of input elements, which are tokens, line terminators, comments, or white space. The source text is scanned from left to right, repeatedly taking the longest possible sequence of code points as the next input element. A Zig file may contain zero or more [=@import=]s; the parameter to which is enforced to be a [=String Literal=]. The content of this [=String=] may be either a relative path to another Zig file or a [=Package=] name. The corresponding Zig file may be lexically processed in parallel.

## White Space

: <dfn>WhiteSpace</dfn>
::
    <pre class='railroad'>
    OneOrMore:
        Choice:
            N: [=TAB=]
            N: [=SourceCharacter=] 'SPACE' (U+0020)
    </pre>

## Line Terminators

Like white space code points, line terminator code points are used to improve source text readability and to separate tokens (indivisible lexical units) from each other. However, unlike white space code points, line terminators have some influence over the behaviour of the syntactic grammar. In general, line terminators may occur between any two tokens, but there are a few places where they are forbidden by the syntactic grammar.

: <dfn>LineTerminator</dfn>
::
    <pre class='railroad'>
    Optional:
        N: [=CR=]
    N: [=NL=]
    </pre>

Note: [=CR=] anywhere outside of a [=LineTerminator=] is rejected.

## Comments

Comments can only be either single-line. There are no multiline comments in Zig (e.g. like `/* */` comments in C). This allows Zig source code to have the property that each line of code can be tokenized out of context.

Because a single-line comment can contain any Unicode code point except a [=LineTerminator=] code point, and because of the general rule that a token is always as long as possible, a single-line comment always consists of all code points from the // marker to the end of the line.

Comments behave like white space and are discarded.

Note: In an Zig program, a Unicode escape sequence occurring within a comment is never interpreted and therefore cannot contribute to termination of the comment. Similarly, a Unicode escape sequence occurring within a string literal in an Zig program always contributes to the literal and is never interpreted as a line terminator or as a code point that might terminate the string literal.

Note: Any [=TAB=] is rejected in a [=Comment=] since it is ambiguous how it should be rendered.

: <dfn>Comment</dfn>
::
    <pre class='railroad'>
    Choice:
        N: [=SingleLineComment=]
        N: [=DocComment=]
        N: [=ContainerDocComment=]
    </pre>

: <dfn>SingleLineComment</dfn>
::
    <pre class='railroad'>
    T: /
    T: /
    ZeroOrMore:
        N: [=CommentChars=]
    </pre>

: <dfn>DocComment</dfn>
::
    <pre class='railroad'>
    T: /
    T: /
    T: /
    ZeroOrMore:
        N: [=CommentChars=]
    </pre>

: <dfn>ContainerDocComment</dfn>
::
    <pre class='railroad'>
    T: /
    T: /
    T: !
    ZeroOrMore:
        N: [=CommentChars=]
    </pre>

: <dfn>CommentChars</dfn>
::
    <pre class='railroad'>
    T: [=SourceCharacter=] but not [=LineTerminator=]
    </pre>

## Tokens

## Identifiers

## Keywords

## Literals

## Operators
