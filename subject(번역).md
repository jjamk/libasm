thanks, papago

1. 정의되지 않은 동작과 별도로 기능이 예기치 않게 중단되지 않아야 한다(분할 결함, 버스 오류, 이중 자유 등). 
   이렇게 되면 프로젝트가 작동하지 않는 것으로 간주되고 평가 중에 0을 받게 된다.
2. 64비트 ASM을 써야 한다. "calling convention(호출규약)"을 주의하십시오.
3. inline ASM(C 소스 코드의 중간에 어셈블리 명령어를 추가하는 관행)을 할 수 없고 '.s' 파일을 해야 한다.
4. 어셈블리 코드를 nasm(어셈블러 중 하나)으로 컴파일해야 한다.
5. AT&T가 아닌 Intel syntax을 사용해야 한다.


1. The library must be called libasm.a.
2. 기능을 테스트하고 컴파일할 메인을 제출해야 한다.
라이브러리가 제대로 작동하는지 보여줄 수 있을 겁니다.
◦ ft_strlen (man 3 strlen)<br>
◦ ft_strcpy (man 3 strcpy)
◦ ft_strcmp (man 3 strcmp)
◦ ft_write (man 2 write)
◦ ft_read (man 2 read)
◦ ft_strdup (man 3 strdup, you can call to malloc)
3. syscall 중에 오류를 확인하고 필요할 때 적절하게 설정해야 함
4. For that, you are allowed to call the extern ___error.  //?
