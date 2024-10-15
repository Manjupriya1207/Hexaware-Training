let students = [];

function addStudent() {
    const name = document.getElementById('name').value;
    const age = document.getElementById('age').value;
    const grade = document.getElementById('grade').value;

    if (name && age && grade) {
        students.push({ name, age, grade });
        alert('Student added successfully!');
        clearFields();
    } else {
        alert('Please fill all fields!');
    }
}

function viewStudents() {
    const tableBody = document.getElementById('studentTable').getElementsByTagName('tbody')[0];
    tableBody.innerHTML = ''; // Clear the table

    students.forEach((student, index) => {
        const row = tableBody.insertRow();
        const nameCell = row.insertCell(0);
        const ageCell = row.insertCell(1);
        const gradeCell = row.insertCell(2);

        nameCell.innerHTML = student.name;
        ageCell.innerHTML = student.age;
        gradeCell.innerHTML = student.grade;
    });
}

function sortStudents() {
    students.sort((a, b) => b.grade.localeCompare(a.grade));
    viewStudents();
}

function deleteStudent() {
    const name = prompt('Enter the name of the student you want to delete:');
    const index = students.findIndex(student => student.name === name);

    if (index !== -1) {
        const confirmation = confirm(`Are you sure you want to delete ${name}?`);
        if (confirmation) {
            students.splice(index, 1);
            alert(`${name} has been deleted!`);
            viewStudents();
        }
    } else {
        alert('Student not found!');
    }
}

function clearFields() {
    document.getElementById('name').value = '';
    document.getElementById('age').value = '';
    document.getElementById('grade').value = '';
}
