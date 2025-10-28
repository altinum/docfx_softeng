# 3. Diákok listázása

> [!Video https://storage.altinum.hu/textbook/Textbook_3_List_Students.m4v]

``` csharp
private void GetStudents()
{
	var studentsFiltered = from x in context.Students.Local
						   where x.Name.Contains(textBoxStudentFilter.Text)
						   select x;

	studentBindingSource.DataSource = studentsFiltered.ToList();
}
˙``
