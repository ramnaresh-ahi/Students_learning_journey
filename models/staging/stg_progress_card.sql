
WITH progress_card AS(
    SELECT
       progress_id,
       student_id,
       session_attendance_last_3_months,
       posts_on_gita_community,
       enrolled_for_august,
       ROUND(duration_continuous_enrollment_live_session, 1) as duration_continuous_enrollment_live_session,
       last_gita_exam_percentile,
       exam_attendance,
       ROUND(total_duration_enrollment_live_session, 1) as total_duration_enrollment_live_session,
       ROUND(total_view_duration_session_recording_last_30_days, 1) as total_view_duration_session_recording_last_30_days,
       ROUND(avg_view_duration_live_session_last_30_days, 1) as avg_view_duration_live_session_last_30_days,
       calls_from_foundation_picked_last_3_months,
       invite_student,
       student_added_in_geeta_samagam,
       active_added_student
    FROM
        {{ source('raw', 'progress_card')}} 

)

SELECT
    *
FROM 
    progress_card
