# Final Project - Cherry Picking Exam

For the final project, each student assembles their own task using solutions and building blocks learned during the course. The **project must be prepared at home**, and the point value of each feature is predetermined according to the **"Pricing Table"** below. The task involves building an ASP.NET and Windows Forms application that provides a solution (or partial solution) to a real or fictional problem. You may bring the `Scaffold-DbContext` command or, if you're using a local Service-Based Database, the SQL script that creates the database. 

**Everyone is free to decide where to place the emphasis.**

> [!IMPORTANT]
>
> The C# project must be built during the **2x90-minute** sessions of the labs. **We will not have a break between the timeslots.**

You can use your own database or databases from the course. You can collect up to **30 points in total**, but only working solutions earn points — no partial credit is given. A custom database earns 7 points, but if we find identical databases submitted, neither will receive points.

> [!NOTE]
>
> We recommend to start with planning! Draw your concept on a sheet and calculate the point values using the [Pricing Table](#pricing-table). Preparing the project is an individual task — we don’t want to see identical solutions. Be creative 🙂!

## Milesotones of the final project

❶ Find out the topic of the project. You don't have to overcomplicate it 🙂.

❷ Design the database schema and set up the database in Azure. You will find information on [renewing your Azure subscription](https://b37ab76e7f975484ddcb88481f0ee515.claudemcpcontent.com/building_blocks/azure/register_renew_azure.md) and [setting up a database](https://b37ab76e7f975484ddcb88481f0ee515.claudemcpcontent.com/building_blocks/azure/create_azure_db.md) on this page. Fill the database with some sample data. You can use AI to fill the database. Only sample records are needed to prove that your concept works.

❸ Build your C# project at home. Then check whether your project meets the required complexity using the [Pricing Table](https://b37ab76e7f975484ddcb88481f0ee515.claudemcpcontent.com/mcp_apps?connect-src=https%3A%2F%2Fesm.sh+https%3A%2F%2Fcdnjs.cloudflare.com+https%3A%2F%2Fcdn.jsdelivr.net+https%3A%2F%2Funpkg.com&resource-src=https%3A%2F%2Fesm.sh+https%3A%2F%2Fcdnjs.cloudflare.com+https%3A%2F%2Fcdn.jsdelivr.net+https%3A%2F%2Funpkg.com+https%3A%2F%2Fassets.claude.ai&dev=true#pricing-table). You can take handwritten notes on the steps and make sketches of the user interface.

❹ Check whether your database is accessible from the lab computers. Connect to the Corvinus VPN and try to run your project.

❺ Upload your Scaffold DB context command to [Moodle](https://moodle.uni-corvinus.hu/mod/quiz/view.php?id=1650961) so you don't have to struggle with building it during the exam.

❻ In the eleventh week you will have to build your project using the lab computers. You may bring your notes and sketches, and you can print the database schema, but your notes must not include any code. Your work will have to be submitted to Moodle.

❼ The self-evaluation markdown document has to be prepared at home after the exam. You can download your work from Moodle. A sample **self eval. sheet** is included [here](blank_self_eval.md). I suggest you remove the irrelevant lines and adjust the multipliers for the relevant lines. You can present the database schema in Mermaid format in this document. Please don't forget to sum up your points.

## Background

In previous years, C# courses ended with project submissions. We’ve found that real understanding develops when students design and build their own applications. However, in the context of a competitive scholarship, it’s difficult to assess how much outside help went into a project.  This test approach helps evaluate individual effort more reliably. No matter how you gained knowledge, this approach measures what you can do in practice. I'm glad to help via Teams! 

## Pricing Table

Point values are given in multiplier format, e.g., `4x2p`. The **second** number—`2p` in this case—is the point value for a given subtask, while the **first** indicates how many times the task can earn points. Thus, repeating the same 2 point feature 15 times won't earn you 30 points - so one cannot earn all the points by repeating a single subtask.

You will have 6 minutes to earn a point on average - 6x30=2x90. If you design your own database it increases to 7½ minutes / point! This is a plenty of time if you prepared what you want to do in advance. 

### Database

#### Custom Database Design

The database has to be built and hosted in advance preferably in Azure. If Azure for  Students credits have expired, contact instructor at the lab for a DB account on bit.uni-corvinus.hu.  The DB has to have at least one many-to-many relation - in other words two constraints. 

- `6x1p` One point per table used in the app. 
- `1x1p` Mermaid `erDiagram` of the DB. Can be included in the self eval. sheet later. 

Fill the DB with some sample records to prove the functionality.

#### Using a sample database

You can also decide to use a sample database like https://github.com/lerocha/chinook-database. But this earns you no points. 

### Windows Forms Application

#### User Interface

- `1x1p` The application only exits after a confirmation dialog.
- `3x1p` Layout where buttons load `UserControls` into a `Panel`, fully filling it. Each button earns points if it loads a functioning `UserControl`. Each `UserControl` yields `1p`. 
- `3x1p` Multi-window application with at least two pop-up windows. Each Form must be its own class and have functionality. Windows can open via buttons or menu. Each popup Form worths `1p`. 
- `1x1p` Proper use of **anchors**  and `Dock` throughout the application, ensuring UI resizes properly.

#### Displaying Table Data in a `DataGridView`, `ListBox` or `ComboBox`

You can create two of these Forms or UserControls for two tables. Points are can be collected for both as below. Points listed below refer to only one from or UserControl. Points are additive. 

- `1x1p` Data is displayed in a `DataGridView` , `ListBox` or `ComboBox`.
- `1x1p` Data can be filtered via any method (e.g., using a `TextBox`).
- `1x1p` Foreign key shown via `DataGridViewComboBoxColumn` in case if a `DataGridView`.
- `1x2p` Data source is a custom class.

#### Data Binding via `BindingSource`

In addition to displaying table data in a `DataGridView`,`ListBox` or `ComboBox` (collection-based controls)

- `1x2p` Working `BindingSource`.
- `4x1p` Other bound controls, e.g. `TextBox`, `DateTimePicker`, foreign key `ComboBox` are used.

#### Adding New Records Via a popup Form

You can create two of these Forms or UserControls for two tables. Points are can be collected for both as below. Points listed below refer to one from or UserControl. Points are additive. 

- `1x2p` Input validation (e.g., `String.IsNullOrEmpty()`).
- `3x1p` `Regex`-based validation.
- `1x2p` Working _OK_ and _Cancel_ buttons.
- `1x1p` Form includes a dropdown or list for foreign key selection.
- `2x1p` Input errors are shown via `ErrorProvider`
- `1x1p` _OK_ button disabled on invalid input:  _OK_ button is disabled if errors exist.

#### Adding a record into a detail table in a master-detail relationship

`2x3p` for inserting a record into a detail table in a master-detail relationship

Let's take a two tables as an example: `ProductCategory` and `Product`. Product categories are displayed in a ListBox. The user can enter properties of a new product is TextBox-es. Clicking the "Add" button the new product is added to the selected category. 

#### Adding new records to the intermediate table of a many-to-many relation

`2x3p` for inserting a record into the connector table in a master-detail relationship

Let's take a library database as an example with three tables: `Member`, `Book` and `Borrow`. Borrow is the intermediate table the many-to-many relation. The user needs to select which book is borrowed by which member. The book and member can be selected from a ListBox or DataGridView. Clicking the "Add" button a now record gets created in the `Borrow` table with foreign keys referring to the selected user and book. 

#### Deleting Records

- `2x1p` Successful deletion of a selected record.
- `2x1p` Deletion with confirmation. Eg. `MessageBox.Show("","",MessageBoxButtons.YesNo)`

#### CSV File handling

- `1x2p` Read data from a CSV file that can be opened using an OpenFileFialog. 

- `1x2p` Save data to CSV file that can be picked using a SaveFileFialog. 

#### Excel Workbook Generation

Not covered in the labs due to lack of time, but great NuGet package and examples available here: https://github.com/ClosedXML/ClosedXML

- `1x3p` Generate Excel file from database content with at least one formatting.

#### Use of More Complex Algorithm for a Meaningful Task

`1x7p` 

- Algorithm forms a reusable, independent unit.
- Plays a meaningful, irreplaceable role (not over-engineered).
- Uses database data.
- Applies mathematical formula not taught up to 8th grade.

### ASP .NET

> [!NOTE]
>
> The ASP .NET topic will be covered in the on the lecture before the project exam. If you have knowlegde in Javascript, you can use it, but it's not part of this curriculum. You can connect the dots. 

ASP.NET application can be created in the same solution as the Forms-based project.

- `1x2p` `program.cs` configured to serve static content from the `wwwroot` folder.

#### API Endpoints

- `1x1p` Retrieve a whole SQL table via API.
- `1x1p` Get a single record via API.
- `1x1p` Deleting a record via API.
- `1x1p` Insert record into SQL table via `HttpPost`.
- `1x1p` Update record via `HttpPost`.

#### HTML + JavaScript

Only parts tied to built API endpoints can be scored. JavaScript must load data from API.

- `2x3p` Populate DOM (text + image) with JavaScript. 

- `1x2p` At least 20 lines of meaningful CSS.
- `1x1p` JavaScript performs other functions besides data loading.

## Scoring Rules

1. A single solution may contain both ASP.NET and Windows Forms projects.
2. Points are awarded only once per feature.
4. You may exceed 30 points as a safety margin—this allows you to still earn the full score even if some features fail.
5. No handwritten A4 cheat sheets are allowed for this test.

## Scoring Procedure

**After the submission**, each student must create Markdown file at home as well. The deadnie is the fist day of the exam periad. More on markdown later. It must include screenshots demonstrating the implemented features. Copy this Price List, delete irrelevant items, and insert screenshots under each relevant section. 

We will discuss the solutions one-to-one. 

We recommend [https://www.screentogif.com/](https://www.screentogif.com/) for creating animated GIFs of your solutions.

If you list a feature that’s missing or broken and fail to describe the issue, **you lose three times the points** for that item.





