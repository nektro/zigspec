# Source Text

: <dfn>SourceCharacter</dfn>
::
    <pre class='railroad'>
    T: any Unicode code point
    </pre>

Zig source text is a sequence of Unicode code points. All Unicode code point values from U+0000 to U+10FFFF, including surrogate code points, may occur in Zig source text where permitted by the grammar. Files storing Zig source text are [[UTF-8]] encoded text files. The files storing Zig source code are usually named with the `.zig` extension.

The components of a combining character sequence are treated as individual Unicode code points even though a user might think of the whole sequence as a single character.

: <dfn>NL</dfn>
::
    <pre class='railroad'>
    T: [=SourceCharacter=] 'LINE FEED (LF)' (U+000A)
    </pre>


: <dfn>CR</dfn>
::
    <pre class='railroad'>
    T: [=SourceCharacter=] 'CARRIAGE RETURN (CR)' (U+000D)
    </pre>

: <dfn>TAB</dfn>
::
    <pre class='railroad'>
    T: [=SourceCharacter=] 'CHARACTER TABULATION' (U+0009)
    </pre>

Issue(ziglang/zig-spec#38): further discussion here.
