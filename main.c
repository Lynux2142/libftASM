#include "libasm.h"

static int fibo2(int nb)
{
	int a = 0, b = 1;

	if (nb == 0 || nb > 46)
		return (0);
	for (int i = 0, tmp; i < nb; ++i)
	{
		tmp = a + b;
		a = b;
		b = tmp;
	}
	return (a);
}

int main(int ac, char **av)
{
	(void)fibo2;
//	char *str;
	char *str2;

	if (ac != 2) { printf("usage: ./a.out [string]\n"); return (1); }
//	str = ft_strdup(av[1]);
	str2 = strdup(av[1]);

//	printf("%s\n", str);
	printf("%s\n", str2);

	ft_memset(str2, 'W', 5);
	printf("%s\n", str2);

//	free(str);
	free(str2);
	return 0;
}
