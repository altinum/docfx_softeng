# Self evaluation sheet

|                          |      |
| ------------------------ | ---- |
| Name:                    |      |
| Neptun:                  |      |
| Claimed points in total: |      |

## Short description of the project

> Answer in a few lines only.

## Database details

> [!TIP]
>
> From this point please remove the irrelevant lines from the document, and adjust the multipliers of the relevant features. At the end please sum up all the points and indicate them in the table above. Please add a screenshot or a one-liner text to show where we can find the feature you claim points for in the app. You can download this page in a .md format from GitHub just by clicking the "Edit This Page" button on the bottom of this page.

> If you do not use your own database design please indicate the origin of the database here.

- `6x1p` One point per table used in the app. 
- `1x1p` Mermaid `erDiagram` of the DB. 

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