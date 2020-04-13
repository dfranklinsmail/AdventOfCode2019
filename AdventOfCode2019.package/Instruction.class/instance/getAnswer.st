private
getAnswer
| answer initialValue |
answer := UIManager default request: 'enter initial value'.
initialValue := Number readFrom: answer ifFail: [self error: 'Sorry, this was not a well formed number'].
^initialValue