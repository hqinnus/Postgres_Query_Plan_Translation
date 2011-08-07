/*-------------------------------------------------------------------------
 *
 * planoperators.h
 *	  Definitions for nodes used in the new feather, query plan language.
 *
 *
 *
 * $PostgreSQL: pgsql/src/include/nodes/planoperators.h
 *
 *-------------------------------------------------------------------------
 */
#ifndef QUERYPLANNODES_H
#define QUERYPLANNODES_H

#include "nodes/bitmapset.h"
#include "nodes/primnodes.h"
#include "nodes/value.h"

/* ----------------------
 *		QueryPlan Statement
 *
 * ----------------------
 */
typedef struct QueryPlanStmt
{
	NodeTag		type;
	List      *targetlist;
	Node*   operator;	
	char*     showplan;
} QueryPlanStmt;

typedef struct SeqScanOperator
{
	NodeTag type;
	Node *table;
	Node*  exprs;
} SeqScanOperator;

typedef struct IndexScanOperator
{
	NodeTag type;
	Node *table;
	Node* col;
	Node* exprs;
}IndexScanOperator;

typedef struct BMHeapScanOperator
{
	NodeTag type;
	Node *table;
	Node* bitmap;
}BMHeapScanOperator;

typedef struct BMIndexScanOperator
{
	NodeTag type;
	Node *table;
	Node* col;
	Node* exprs;
}BMIndexScanOperator;

typedef struct BMAndOperator
{
	NodeTag type;
	List* bitmaps;
}BMAndOperator;

typedef struct BMOrOperator
{
	NodeTag type;
	List* bitmaps;
}BMOrOperator;

typedef struct NestLoopOperator
{
	NodeTag type;
	Node* leftopr;
	Node* leftcol;
	Node* rightopr;
	Node* rightcol;
} NestLoopOperator;

typedef struct HashJoinOperator{
	NodeTag type;
	Node* leftopr;
	Node* leftcol;
	Node* rightopr;
	Node* rightcol;
}HashJoinOperator;

/*typedef struct MergeJoinOperator{
	NodeTag type;
	Node* leftopr;
	Node* leftcol;
	Node* rightopr;
	Node* rightcol;
}MergeJoinOperator;*/

typedef struct MaterializationOperator{
	NodeTag type;
	Node* tuples;
}MaterializationOperator;

#endif   /* NODES_H */
