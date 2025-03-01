import java.util.Scanner;
public class Anasinif {

    public static void main(String[] args) {
        Scanner plane= new Scanner(System.in);
int km,age,choose;

System.out.println("Please enter how many kilometers you will travel");
km=plane.nextInt();
System.out.println("Please enter your age");
age=plane.nextInt();
System.out.println("Please choose one of the 2 options (1-one way 2-two way)");
choose=plane.nextInt();

double normalPrice,discountedAge,discountedChoose;

if(km >= 0 && age >= 0 && (choose==1 || choose==2)){
    normalPrice=km*0.10;
if(age <= 11){
    discountedAge=normalPrice*0.5;
}else if (12<=age && age<=24){
    discountedAge=normalPrice*0.1;
}else if(age >= 65){
    discountedAge=normalPrice*0.3;
}else{
    discountedAge=0;
} normalPrice-=discountedAge;
if(choose == 2){
    discountedChoose=normalPrice*0.2;
    normalPrice=(normalPrice-discountedChoose)*2;
} System.out.println("Ticket Amount:"+normalPrice +"$" );
}else {
    System.out.println("d<vbfngmhgömnfdf");
}


}
}
