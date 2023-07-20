#include <stdio.h>
int main(){
	float sum, count = -1;
	int num = 1;
	while(num > 0){
		printf("enter number : ");
		scanf("%d",&num);
		count++;
		sum+=num;
		

	}
	int summ = sum;
	printf("sum = %d\nagv = %f",summ,sum/count);
}
