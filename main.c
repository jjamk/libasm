#include "libasm.h"

int main(void)
{
	char *str1;
	str1="hello1230";

	printf("strlen: %lu | ft_strlen: %lu\n", strlen(str1), ft_strlen(str1));
	printf("strlen: %lu | ft_strlen: %lu\n", strlen(""), ft_strlen(""));
	write(1,"\n",1);
	
	char *s1 = "hella";
	char *s2 = "helld";
	char *s3 = "hella";
	printf("strcmp: %d | ft_strcmp: %d\n", strcmp(s1,s2), ft_strcmp(s1,s2));
	printf("strcmp: %d | ft_strcmp: %d\n", strcmp(s2,s1), ft_strcmp(s2,s1));
	printf("strcmp: %d | ft_strcmp: %d\n", strcmp(s1,s3), ft_strcmp(s1,s3));
	write(1,"\n",1);

	char dest[]="abcdef12g";
	char src[]="hello12";
	printf("strcpy: %s | ft_strcpy: %s\n", strcpy(dest,src), ft_strcpy(dest, src));
	printf("strcpy: %s | ft_strcpy: %s\n", strcpy(dest,""), ft_strcpy(dest,""));
	write(1,"\n",1);

	printf("strdup: %s | ft_strdup: %s\n", strdup(str1), ft_strdup(str1));
	printf("strdup: %s | ft_strdup: %s\n", strdup(""), ft_strdup(""));
	write(1,"\n",1);

	printf("--write--\n");
	write(1,"fd=1: ",6 );
	write(1,str1,9);
	write(1, "\nfd=0: ",7);
	write(0,str1,9);
	write(1,"\nfd=-1: ",7);
	write(-1,str1,9);
	printf("\n\n--ft_write--\n");
	ft_write(1,"fd=1: ",6 );
	ft_write(1,str1,9);
	ft_write(1, "\nfd=0: ",7);
	ft_write(0,str1,9);
	ft_write(1,"\nfd=-1: ",7);
	ft_write(-1,str1,9);
	ft_write(1,"\n\n",2);

	int fd= open("read.txt", O_RDONLY);
	void *buff = malloc(sizeof(char) * 100);
	read(fd, buff, 30);
	printf("read.txt = %s\n", buff);
	close(fd);
	fd= open("read.txt", O_RDONLY);
	void *buf = malloc(sizeof(char) * 100);
	read(fd, buf, 15);
	printf("read = %s\n", buf);
	free(buf);
	fd = open("read.txt", O_RDONLY);
	buf = malloc(sizeof(char) * 100);
	ft_read(fd, buf, 15);
	printf("ft_read = %s\n", buf);
	printf("\n");
	read(-1, buf, 15);
	printf("fd=-1인 경우: read = %s\n", strerror(errno));
	ft_read(-1, buf, 15);
	printf("fd=-1인 경우: ft_read = %s\n", strerror(errno));
}
