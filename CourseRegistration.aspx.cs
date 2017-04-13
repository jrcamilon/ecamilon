using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseRegistration : System.Web.UI.Page
{
    //Application Variables
    string fName = "";
    string lName = "";
    string studentID = "";
    string barretCollege = "Non-Barret Honors Graduate";

    string semester = "";
    string year = "";

    List<string> desiredCourses = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        //initialize
    }

    public bool getTextBoxFields()
    {

        if(!validateTextboxFields())
        {
            //save variables
            fName = firstName.Text;
            lName = lastName.Text;
            studentID = asuID.Text;

            if (chkbx_barretCollege.Checked)
            {
                barretCollege = "Barret Honors Graduate";
            }

            semester = ddl_semester.Text;
            year = ddl_year.Text;

            return false;
        }
        else
        {
            return true;
        }

    }

    public bool validateTextboxFields()
    {
        //checks to see if the required fields are left blank, returns true if one or more
        // of the fields are empty or left unanswered.
        return (firstName.Text == "" || lastName.Text == "" || asuID.Text == ""
              || ddl_semester.Text == "Select Semester" || ddl_year.Text == "Year"
              || checkBoxesCheck());

        
    }


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        ListBox_Courses.Items.Clear();

        if (!getTextBoxFields())
        {
            coursesSelected();
            clearUserFields();
            printStudent();
            unhideCheckboxes();
        }

    }

    //method to loop through panel1 with all the checkboxes and check for cheked ones
    //if the checkbox is checked, grab the text property and add it to the list
    public void coursesSelected()
    {
        CheckBox item = new CheckBox();

        foreach (var control in Panel1.Controls) //panel1 controls aka checkboxes
        {
            if (control is CheckBox)
            {
                if (((CheckBox)control).Checked == true)
                {
                    item = (CheckBox)control;
                    desiredCourses.Add(item.Text);
                }
            }
        }
    }


    public void clearUserFields()
    {
        //clear all the textboxes and fields for next student.
        firstName.Text = "";
        lastName.Text = "";
        asuID.Text = "";
        chkbx_barretCollege.Checked = false;
        ddl_semester.SelectedIndex = 0;
        ddl_year.SelectedIndex = 0;

        foreach (Control c in Panel1.Controls)
        {
            if (c is CheckBox)
            {
                ((CheckBox)c).Checked = false;
            }
        }
    }

    public void printStudent()
    {

        output_StudentName.Text = fName + " " + lName;
        output_asuID.Text = studentID;
        output_gradStatus.Text = barretCollege;
        lbl_semester.Text = semester;
        lbl_year.Text = year;      

        foreach (var course in desiredCourses)
        {
            ListBox_Courses.Items.Add(new ListItem(course));
        }

    }

    protected void ddl_semester_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_semester.Text.Contains("Spring"))
        {
            cb_cis235.Visible = false;
            cb_cis425.Visible = true;
        }
        else if(ddl_semester.Text.Contains("Fall"))
        {
            cb_cis425.Visible = false;
            cb_cis235.Visible = true;
        
        }
        else if (ddl_semester.Text.Contains("Summer"))
        {
            cb_cis235.Visible = false;
            cb_cis425.Visible = false;
        }


    }




    public void unhideCheckboxes()
    {
        cb_cis235.Visible = true;
        cb_cis425.Visible = true;
    }

    public bool checkBoxesCheck()
    {
        bool empty = true;
        foreach (var control in Panel1.Controls) {
            if (control is CheckBox){
                if (((CheckBox)control).Checked == true){
                    return false;
                }
            }
        }
        return empty;
    }


}

