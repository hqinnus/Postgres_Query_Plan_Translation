/*-------------------------------------------------------------------------
 *
 * planner.h
 *	  prototypes for planner.c.
 *
 *
 * Portions Copyright (c) 1996-2010, PostgreSQL Global Development Group
 * Portions Copyright (c) 1994, Regents of the University of California
 *
 * $PostgreSQL: pgsql/src/include/optimizer/planner.h,v 1.48 2010/01/02 16:58:07 momjian Exp $
 *
 *-------------------------------------------------------------------------
 */
#ifndef PLANNER_H
#define PLANNER_H

#include "nodes/plannodes.h"
#include "nodes/relation.h"


/* Hook for plugins to get control in planner() */
typedef PlannedStmt *(*planner_hook_type) (Query *parse,
													   int cursorOptions,
												  ParamListInfo boundParams);
extern PGDLLIMPORT planner_hook_type planner_hook;

extern PlannedStmt *qp_planner(Query *parse, int cursorOptions, 
								ParamListInfo boundParams, MockPath *mockpath);
extern Plan *qp_plan_create(PlannerGlobal *glob, Query *parse, bool hasRecursion, 
				double tuple_fraction, PlannerInfo **subroot, MockPath *mockpath);
extern Plan *qp_grouping_planner(PlannerInfo *root, double tuple_fraction, MockPath *mockpath);


extern Node *preprocess_expression(PlannerInfo *root, Node *expr, int kind);
extern PlannedStmt *planner(Query *parse, int cursorOptions,
		ParamListInfo boundParams);
extern PlannedStmt *standard_planner(Query *parse, int cursorOptions,
				 ParamListInfo boundParams);

extern Plan *subquery_planner(PlannerGlobal *glob, Query *parse,
				 PlannerInfo *parent_root,
				 bool hasRecursion, double tuple_fraction,
				 PlannerInfo **subroot);

extern Expr *expression_planner(Expr *expr);

#endif   /* PLANNER_H */
