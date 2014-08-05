struct svm_node
{
	int index = 0;
	double value = 1.0;

	//bool opEquals()(auto ref const svm_node rhs) { return index == rhs.index && value == rhs.value; }
}

struct svm_problem
{
	int a;
}

struct svm_parameter
{
	int b;
}

extern (C++) int do_something(const (svm_node) *node);
extern(C++) void svm_cross_validation(const(svm_problem) *prob, const(svm_parameter) *param, int nr_fold, double *target);

