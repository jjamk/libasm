#include "libasm.h"

int main(void)
{
	char *str;
	str1="hello";
		
	printf("strlen: %lu | ft_strlen: %lu\n", strlen(str), ft_strlen(str));
	printf("strlen: %lu | ft_strlen: %lu\n", strlen(""), ft_strlen(""));
	printf("strlen: %lu | ft_strlen: %lu\n", strlen(), ft_strlen());
	char *s1 = "hellb";
	char *s2 = "hella";
	printf("strcmp: %d\n", ft_strcmp(s1,s2));
	char dest[]="hhhhhh";
	char src[]="hello";
	printf("strcpy: %s\n", strcpy(dest,src));
	printf("ft_strcpy: %s\n", ft_strcpy(dest,src));
	printf("strdup: %s\n", strdup(str));
	printf("ft_strdup: %s\n", ft_strdup(str));
	write(1,str,5);
	write(1,"\n",1);
	ft_write(1,str,5);
	write(1,"\n",1);
	int fd= open("read.txt", O_RDONLY);
	void *buf = malloc(sizeof(char) * 100);
	read(fd, buf, 15);
	printf("read = %s\n", buf);
	fd = open("read.txt", O_RDONLY);
	buf = malloc(sizeof(char) * 100);
	ft_read(fd, buf, 15);
	printf("ft_read = %s", buf);
}
