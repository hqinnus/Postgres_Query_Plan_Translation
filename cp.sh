cd ..
cp PQPT/gram.y postgresql-9.0.1/src/backend/parser
cp PQPT/kwlist.h postgresql-9.0.1/src/include/parser
cp PQPT/planoperators.h postgresql-9.0.1/src/include/nodes
cp PQPT/nodes.h postgresql-9.0.1/src/include/nodes
cp PQPT/relation.h postgresql-9.0.1/src/include/nodes

cp PQPT/postgres.c postgresql-9.0.1/src/backend/tcop

cp PQPT/analyze.c postgresql-9.0.1/src/backend/parser
cp PQPT/parse_clause.c postgresql-9.0.1/src/backend/parser
cp PQPT/parse_node.c postgresql-9.0.1/src/backend/parser
cp PQPT/analyze.h postgresql-9.0.1/src/include/parser
cp PQPT/parse_clause.h postgresql-9.0.1/src/include/parser
cp PQPT/parse_node.h postgresql-9.0.1/src/include/parser

cp PQPT/pquery.c postgresql-9.0.1/src/backend/tcop
cp PQPT/utility.c postgresql-9.0.1/src/backend/tcop
cp PQPT/pquery.h postgresql-9.0.1/src/include/tcop
 
cp PQPT/allpaths.c postgresql-9.0.1/src/backend/optimizer/path
cp PQPT/indxpath.c postgresql-9.0.1/src/backend/optimizer/path
cp PQPT/joinrels.c postgresql-9.0.1/src/backend/optimizer/path
cp PQPT/joinpath.c postgresql-9.0.1/src/backend/optimizer/path

cp PQPT/initsplan.c postgresql-9.0.1/src/backend/optimizer/plan
cp PQPT/planmain.c postgresql-9.0.1/src/backend/optimizer/plan
cp PQPT/planner.c postgresql-9.0.1/src/backend/optimizer/plan

cp PQPT/prepjointree.c postgresql-9.0.1/src/backend/optimizer/prep

cp PQPT/clauses.c postgresql-9.0.1/src/backend/optimizer/clauses.c

cp PQPT/paths.h postgresql-9.0.1/src/include/optimizer
cp PQPT/planmain.h postgresql-9.0.1/src/include/optimizer
cp PQPT/planner.h postgresql-9.0.1/src/include/optimizer

cp PQPT/explain.c postgresql-9.0.1/src/backend/commands
cp PQPT/explain.h postgresql-9.0.1/src/include/commands
