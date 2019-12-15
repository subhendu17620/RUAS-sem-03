#include <stdio.h>

struct student{
  int rl;
  char name[10];
  char address[20];
  int age;
  float marks;
};

struct student s[20];

void get_data(int n);
void print_data(int n);

void main() {
  printf("Enter number of students: ");
  int count;
  scanf("%d",&count);
  get_data(count);
  print_data(count);
}
void get_data(int n){
  for (int i = 0; i < n; i++) {
    printf("Enter student %d data :",i+1 );
    scanf("%d %s %s %d %f",&s[i].rl,&s[i].name,&s[i].address,&s[i].age,&s[i].marks);
  }
}
void print_data(int n){
  for (int i = 0; i < n; i++) {
    printf("\nDetails of student %d",i+1);
    printf("\nRoll no: %d name: %s address: %s age: %d marks: %f",s[i].rl,s[i].name,s[i].address,s[i].age,s[i].marks);
  }

}
