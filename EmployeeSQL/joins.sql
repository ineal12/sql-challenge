SELECT Emp.emp_no, Emp.last_name, Emp.first_name, Emp.gender, Sal.salary FROM EMPLOYEES Emp JOIN SALARIES Sal ON Emp.emp_no = Sal.emp_no;

SELECT *FROM EMPLOYEES
WHERE hire_date between '01/01/1986' and '12/31/1986';

SELECT DeptM.dept_no, Dpt.dept_name, Emp.emp_no, Emp.last_name, Emp.first_name, DeptM.from_date, DeptM.to_date FROM DEPT_MANAGER DeptM
JOIN EMPLOYEES Emp ON DeptM.emp_no = Emp.emp_no
JOIN DEPARTMENTS Dpt ON DeptM.dept_no = DeptM.dept_no;

SELECT Emp.emp_no, Emp.last_name, Emp.first_name, Dept.dept_name FROM EMPLOYEES Emp
JOIN DEPT_EMP DE ON Emp.emp_no = DE.emp_no
JOIN DEPARTMENTS Dept ON DE.dept_no = Dept.dept_no;

SELECT * FROM EMPLOYEES WHERE first_name = 'Hercules' and last_name like 'B%';

SELECT Emp.emp_no, Emp.last_name, Emp.first_name, Dept.dept_name FROM EMPLOYEES Emp
JOIN DEPT_EMP DE on Emp.emp_no = DE.emp_no
JOIN DEPARTMENTS Dept ON DE.dept_no = Dept.dept_no AND Dept.dept_name = 'Sales';

SELECT Emp.emp_no, Emp.last_name, Emp.first_name, Dept.dept_name FROM EMPLOYEES Emp
JOIN DEPT_EMP DE on Emp.emp_no = DE.emp_no
JOIN DEPARTMENTS Dept ON DE.dept_no = Dept.dept_no AND Dept.dept_name in ('Sales', 'Development');

SELECT last_name, count(*) FROM EMPLOYEES GROUP BY last_name ORDER BY count(*) desc;