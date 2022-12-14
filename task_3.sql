use hospital;

select disease_history.diagnosis, patient.patient_name from
disease_history,patient;

select disease_history.diagnosis, patient.patient_name from
disease_history,patient
where patient.patient_id = disease_history.disease_history_id;

select disease_history.diagnosis, patient.patient_name from
disease_history,patient
where patient.patient_id = disease_history.disease_history_id and age > 20;

select patient.patient_name,doctor.doctor_name,treatment_sheet.disease
from patient,doctor,treatment_sheet
where patient.patient_id = treatment_sheet.patient_id and doctor.doctor_id = treatment_sheet.doctor_id;

select disease_history.diagnosis, patient.patient_name from
patient left join disease_history on patient.disease_history_id = disease_history.disease_history_id;

select doctor.doctor_name,operation.operation_description from doctor
left join operation on doctor.doctor_id = operation.doctor_id;

select disease_history.diagnosis, patient.patient_name from
patient right join disease_history on patient.disease_history_id = disease_history.disease_history_id;

select doctor.doctor_name,operation.operation_description from doctor
right join operation on doctor.doctor_id = operation.doctor_id;