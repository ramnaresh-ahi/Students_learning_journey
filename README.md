# 📚 Students Learning Journey Analytics

This project analyzes and tracks the **Bhagavad Gita learning journey of students** within a spiritual education platform. The goal is to understand how students engage over time with key learning activities — such as live sessions, Gita exams, and student referrals into the Gita community.

It provides actionable insights into trends, engagement patterns, and student growth with a robust data modeling approach using **dbt + BigQuery**, and presents insights via a **Looker Studio dashboard**.

---

## 🧠 Project Objectives

- Analyze how students' commitment and attention evolve over time.
- Track engagement with **live sessions**, **Gita exams**, **recorded content**, and **community contributions**.
- Measure how many new students are added to the Gita community by each student.
- Empower decision-makers with KPIs to improve learning outreach and student participation.

---

## 🗃️ Data Sources

### 1. `students`
Contains core student information:
- Full name, contact number, address
- Assigned counselor
- Enrollment and onboarding details

### 2. `progress_card`
Tracks each student’s activity over time:
- Live session attendance
- Gita exam participation
- Recording views
- Number of new students referred into the Gita community

*Note: The data is fully synthetic, created specifically for analytical modeling and demonstration.*

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **dbt Cloud** | Data transformation & modeling |
| **BigQuery** | Cloud data warehouse |
| **GitHub** | Version control & collaboration |
| **Looker Studio** | Dashboard & insights presentation |

---

## 🏗️ Project Structure

This project follows a modular dbt structure:

### ✅ Staging Layer
- Cleans and renames raw fields
- Applies basic transformations

### ⚙️ Intermediate Layer
- Applies business logic
- Aggregates time-based metrics

### 📦 Marts Layer
Final reporting models:
- `fact_student_progress`
- `dim_students`

---

## 🧪 Advanced dbt Features

| Feature | Usage |
|--------|-------|
| **Snapshots** | `dim_students_snapshot` for tracking student info changes |
| **Incremental Models** | `int_progress_card` for scalable student activity tracking |
| **Custom Tests** | `valid_email`, `valid_contact_number` |
| **Custom Macros** | `custom_schema`, `is_positive`, `value_between` |

---

## 📊 Key Metrics

- 👥 Total active students
- 📅 Avg. live session attendance (last 3 months)
- 📝 Avg. Gita exam attendance
- 🎥 Avg. time spent on recordings
- 🤝 Avg. students added into Gita community (Samagam)
- 📢 Avg. posts in the community

---

## 📈 Dashboard & Insights

**🔗 Live Dashboard:**  
[Students Learning Journey - Looker Studio](https://lookerstudio.google.com/reporting/5853d951-c56b-4d0b-a37a-ffe995ba3b30)

This dashboard provides interactive views of:
- Student engagement trends
- Month-over-month growth
- Counselor-level breakdowns
- Community contribution patterns

---

## 📚 Documentation

**🔗 Project Docs:**  
[Students Learning Journey Documentation](https://ramnaresh-ahi.github.io/Students_learning_journey/)

---

## ▶️ How to Run This Project

1. **Clone the repository:**
   ```bash
   git clone https://github.com/ramnaresh-ahi/Students_learning_journey.git
   cd Students_learning_journey
   ```
2. **Set up environment:**
   - Connect your dbt Cloud account to BigQuery
   - Load synthetic data into your `raw` schema

3. **Install dependencies:**
   ```bash
   dbt deps
   ```
4. **Run models:**
   - dbt run

5. **Run tests and generate docs:**
   - dbt test
   - dbt docs generate
   - dbt docs serve
  
---

## 👨‍💻 Author

**Ramnaresh Ahirwar**  
Analytics Engineer | Data Enthusiast  
[GitHub](https://github.com/ramnaresh-ahi) • [LinkedIn](https://www.linkedin.com/in/ramnaresh-ahirwar-77abc/)

---

## 📌 License

This project is for educational and portfolio purposes only.  
All data used is synthetic and generated solely for non-commercial demonstration.


