#include<iostream>
using namespace std;

class lectur
{

    string Student_name;
    string Subject_name;
    string Cours_name;
    int lecture_number;

    public:

    lectur()
    {
        Lecture_Name : " ";
        Subject_Name : " ";
        Cours_Name : " ";
        lecture_Nmber : 0;
    };

    void getdata()
    {
        cout<<"Enter Student Name : ";
        cin>>Student_name;
        cout<<"Enter Subject Name : ";
        cin>>Subject_name;
        cout<<"Enter Cours Name : ";
        cin>>Cours_name;
        cout<<"Enter Lecture Number : ";
        cin>>lecture_number;
    }

    void Showdata()
    {
        cout<<"--------------------------------"<<endl;
        cout<<"Enter Student Name : "<<Student_name<<endl;
        cout<<" ";
        cout<<"Enter Subject Name : "<<Subject_name<<endl;
        cout<<"Enter Cours Name : "<<Cours_name<<endl;
        cout<<"Enter Lecturs Number : "<<lecture_number<<endl;
        cout<<"--------------------------------"<<endl;
    }


};

int main()
{

    int num;
    cout<<"Enter Lectuer numbers : ";
    cin>>num;

    lectur l[num];

    for (int i = 0; i < num; i++)
    {
        l[i].getdata();
        l[i].Showdata();
    }
    

    return 0;
}