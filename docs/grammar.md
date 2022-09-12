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

Note: Defined by `std.zig.Token.Tag` in [/lib/std/zig/tokenizer.zig](https://github.com/ziglang/zig/blob/master/lib/std/zig/tokenizer.zig) Could be interpreted by other code. Railroad diagrams for complex code in [[#expressions]].

Note: TODO how should this section be expanded?

## Identifiers

TODO digit definitions in type.md literal sections

```
IDENTIFIER
    <- !keyword [A-Za-z_] [A-Za-z0-9_]* skip
     / "@\"" string_char* "\""                            skip
```

## Keywords

: <dfn>align</dfn>

: <dfn>allowzero</dfn>

: <dfn>and</dfn>

: <dfn>anyframe</dfn>

: <dfn>anytype</dfn>

: <dfn>asm</dfn>

: <dfn>async</dfn>

: <dfn>await</dfn>

: <dfn>break</dfn>

: <dfn>catch</dfn>

: <dfn>comptime</dfn>

: <dfn>const</dfn>

: <dfn>continue</dfn>

: <dfn>defer</dfn>

: <dfn>else</dfn>

: <dfn>enum</dfn>

: <dfn>errdefer</dfn>

: <dfn>error</dfn>

: <dfn>export</dfn>

: <dfn>extern</dfn>

: <dfn>fn</dfn>

: <dfn>for</dfn>

: <dfn>if</dfn>

: <dfn>inline</dfn>

: <dfn>noalias</dfn>

: <dfn>nosuspend</dfn>

: <dfn>or</dfn>

: <dfn>orelse</dfn>

: <dfn>packed</dfn>

: <dfn>pub</dfn>

: <dfn>resume</dfn>

: <dfn>return</dfn>

: <dfn>linksection</dfn>

: <dfn>struct</dfn>

: <dfn>suspend</dfn>

: <dfn>switch</dfn>

: <dfn>test</dfn>

: <dfn>threadlocal</dfn>

: <dfn>try</dfn>

: <dfn>union</dfn>

: <dfn>unreachable</dfn>

: <dfn>usingnamespace</dfn>

: <dfn>var</dfn>

: <dfn>volatile</dfn>

: <dfn>while</dfn>

## Operators

filter out of `std.zig.Token.Tag`

use table like https://ziglang.org/documentation/master/#Operators
