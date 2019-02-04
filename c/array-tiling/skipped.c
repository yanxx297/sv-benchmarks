extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: __VERIFIER_error(); } }
extern int __VERIFIER_nondet_int(void);
void *malloc(unsigned int size);

int SIZE;

const int MAX = 100000;

int main()
{
	SIZE = __VERIFIER_nondet_int();
	if(SIZE > 1 && SIZE < MAX)
	{
		int i;
		int *a = malloc(sizeof(int)*SIZE);
		
    for(i = 0; i < SIZE; i++)
		{
		    a[i] = __VERIFIER_nondet_int();
		}

		if(SIZE % 2 != 0) { return 1; }

		__VERIFIER_assume(SIZE % 2 == 0);
		for(i = 1; i <= SIZE/2; i++ )
		{
			if( a[2*i-2] > 2*i-2 )
			{
				a[2*i-2] = 2*i-2;
			}
			if( a[2*i-1] > 2*i-1 )
			{
				a[2*i-1] = 2*i-1;
			}
		}

		for(i = 0; i < SIZE; i++)
		{
			__VERIFIER_assert(a[i] <= i);
		}
	}
	return 1;
}
