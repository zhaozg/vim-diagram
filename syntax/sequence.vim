syntax match seqOperator /\v\-+\>+/ nextgroup=seqLabel
syntax match seqSeprator /\v:/ nextgroup=seqMessage

syntax match seqLabel    /\v\w+/ nextgroup=seqOperator,seqSeprator
syntax match seqMessage  /\v\s*[^\n]*\n/ nextgroup=seqLabel,seqNote,seqParticipant,seqTitle

syntax match seqTitle    /\s*\ctitle/ nextgroup=seqMessage
syntax match seqParticipant /\s*\cparticipant / nextgroup=seqLabel
syntax match seqNote     /\s*\cnote left of / nextgroup=seqLabel
syntax match seqNote     /\s*\cnote right of / nextgroup=seqLabel
syntax match seqNote     /\s*\cnote over / nextgroup=seqLabel

highlight link seqKeyword Keyword
highlight link seqTitle Keyword
highlight link seqParticipant Keyword
highlight link seqNote Keyword

highlight link seqLabel Function
highlight link seqOperator Label
highlight link seqSeprator Label
highlight link seqMessage String

let b:current_syntax = 'sequence'

