import svm;
import std.stdio;

void main()
{
	svm_node foo;
	svm_node[2] anode; // = {};
	svm_node[] bnode = new svm_node[2]; // = {};// = { 20, 10 };
	writeln(anode.length);
	//bnode.length = 5;
	int x = do_something(&anode[0]);
	svm_problem problem = svm_problem.init;
	svm_parameter parameter = svm_parameter.init;
	int foldcount = 1;
	double target = 22.2;
	svm_cross_validation(&problem, &parameter, foldcount, &target);
	writeln(anode == bnode);
	writeln(foo);
}


void main_2()
{
	auto problem = svm_problem();
	auto parameter = svm_parameter();
	double target = 1.0;
	svm_cross_validation(&problem, &parameter, 1, &target);
	writeln(target);
}
