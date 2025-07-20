
WITH fact_progress_card AS(
    SELECT
        progress_id,
        student_id,
        session_attendance_last_3_months,
        posts_on_gita_community,
        enrolled_for_august,
        duration_continuous_enrollment_live_session,
        last_gita_exam_percentile,
        exam_attendance,
        total_duration_enrollment_live_session,
        total_view_duration_session_recording_last_30_days,
        avg_view_duration_live_session_last_30_days,
        calls_from_foundation_picked_last_3_months,
        invite_student,
        student_added_in_geeta_samagam,
        active_added_student,
        stud_contact_no,
        stud_email,
        stud_city,
        stud_preferred_language,
        stud_registered_date
    FROM
        {{ ref('int_progress_card')}}
)

SELECT
    *
FROM
    fact_progress_card
