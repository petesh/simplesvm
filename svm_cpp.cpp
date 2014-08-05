#include <iostream>

using std::cout;
using std::endl;

struct svm_node
{
	int index;
	double value;
};

struct svm_problem
{
    int a;
};

struct svm_parameter
{
    int b;
};

int
do_something(const struct svm_node *node)
{
    return 2;
}

void
svm_cross_validation(const struct svm_problem *prob, const struct svm_parameter* param, int nr_fold, double *target)
{
    *target = 5.0;
}
