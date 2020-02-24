```
pub global activate dcdg
dcdg --package ../cone > cone.uml

brew install plantuml
plantuml -tlatex cone.uml

# pdflatex (e.g., MacTeX)
pdflatex 
```

[cone.pdf](/files/cone.pdf)
