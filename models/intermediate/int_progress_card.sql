
{{
    config(
        materialized = 'incremental',
        unique_key = 'progress_id'
    )
}}

WITH progress_card AS(
    SELECT
        p.progress_id,
        p.student_id,
        p.session_attendance_last_3_months,
        p.posts_on_gita_community,
        p.enrolled_for_august,
        p.duration_continuous_enrollment_live_session,
        p.last_gita_exam_percentile,
        p.exam_attendance,
        p.total_duration_enrollment_live_session,
        p.total_view_duration_session_recording_last_30_days,
        p.avg_view_duration_live_session_last_30_days,
        p.calls_from_foundation_picked_last_3_months,
        p.invite_student,
        p.student_added_in_geeta_samagam,
        p.active_added_student,
        s.contact_no as stud_contact_no,
        s.email as stud_email,
        s.connect_with as stud_connect_with,
        s.city as stud_city,
        s.preferred_language as stud_preferred_language,
        s.registered_date as stud_registered_date
    FROM
        {{ ref('stg_progress_card')}} p 
        JOIN
        {{ ref('stg_students')}} s USING(student_id)

    {% if is_incremental() %}
      WHERE s.registered_date > (SELECT MAX(stud_registered_date) FROM {{ this }})
    {% endif %}
)

SELECT
    *
FROM
    progress_card