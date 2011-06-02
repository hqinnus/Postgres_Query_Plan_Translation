cd ..
cp gram.y postgresql-9.0.1/src/backend/parser
cp kwlist.h postgresql-9.0.1/src/include/parser
cp planoperators.h postgresql-9.0.1/src/include/nodes
cp nodes.h postgresql-9.0.1/src/include/nodes
cp relation.h postgresql-9.0.1/src/include/nodes

cp postgres.c postgresql-9.0.1/src/backend/tcop

cp analyze.c postgresql-9.0.1/src/backend/parser
cp parse_clause.c postgresql-9.0.1/src/backend/parser
cp parse_node.c postgresql-9.0.1/src/backend/parser
cp analyze.h postgresql-9.0.1/src/include/parser
cp parse_clause.h postgresql-9.0.1/src/include/parser
cp parse_node.h postgresql-9.0.1/src/include/parser

cp pquery.c postgresql-9.0.1/src/backend/tcop
cp utility.c postgresql-9.0.1/src/backend/tcop
cp pquery.h postgresql-9.0.1/src/include/tcop
 
cp allpaths.c postgresql-9.0.1/src/backend/optimizer/path
cp indxpath.c postgresql-9.0.1/src/backend/optimizer/path
cp joinrels.c postgresql-9.0.1/src/backend/optimizer/path
cp joinpath.c postgresql-9.0.1/src/backend/optimizer/path

cp initsplan.c postgresql-9.0.1/src/backend/optimizer/plan
cp planmain.c postgresql-9.0.1/src/backend/optimizer/plan
cp planner.c postgresql-9.0.1/src/backend/optimizer/plan

cp prepjointree.c postgresql-9.0.1/src/backend/optimizer/prep

cp clauses.c postgresql-9.0.1/src/backend/optimizer/clauses.c

cp paths.h postgresql-9.0.1/src/include/optimizer
cp planmain.h postgresql-9.0.1/src/include/optimizer
cp planner.h postgresql-9.0.1/src/include/optimizer

cp explain.c postgresql-9.0.1/src/backend/commands
cp explain.h postgresql-9.0.1/src/include/commands
