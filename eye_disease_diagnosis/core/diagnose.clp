(defrule glaucoma_test_80pct "This tests whether the disease is glaucoma" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(medical_history(pre_existing "diabetic"))
=>
(assert (diagnosis(name glaucoma_80pct)))
(printout t "80% chance the patient has GLOUCOMA which is caused by An injury to the eye or Blocked blood vessels or Inflammatory disorders of the eye

Treatment: eye drops, pills, laser surgery, traditional surgery or a combination of these methods" crlf)

)

(defrule glaucoma_test_60pct "This tests whether the disease is gloucoma with 60% confidence" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(not (medical_history(pre_existing "diabetic")))
=>
(assert (diagnosis(name glaucoma_60pct)))
(printout t "60% chance patient has GLAUCOMA, recommend diabetic test" crlf)
)

(defrule cataract_test "This tests cataract disease"
(symptom(name "poor color perception"))
(observation (name "Patient is sensitive to light and glare"))
(slit_lamp_result(result "positive"))
=>
(assert (diagnosis(name cataract)))
(printout t "Patient has CATARACT which is caused by diabetics,genetics ,obessity,smoking or eye injury 
Treatment: eyeglasses, brighter lighting, anti-glare sunglasses, or magnifying lenses" crlf)
)

(defrule macular_degeneration_test "This tests Macular degeneration disease"
(symptom(name "loss of vision"))
(patient (age "55"))
(goldmann_perimeter_result(result "positive"))
=>
(assert (diagnosis(name retinal_degeneration)))
(printout t "Patient has Macular degeneration. Causes are obesity,age,smoking.
Treatment: visit an ophthalmologist" crlf)
)

(defrule diabetic_retinopathy_test "This tests Diabetic retinopathy disease"
(symptom(name "redness"))
(medical_history (pre_existing "diabetic"))
(ophthalmoscopy_result(result "positive"))
=>
(assert (diagnosis(name diabetic_retinopathy)))
(printout t "Patient has Diabetic retinopathy which is caused ny diabetics obesity
Treatment: regulate blood sugar level" crlf)
)

(defrule cross_eyes_strabismus "This tests Strabismus disease"
(symptom(name "eyes aren’t lined up with each other when you look at something"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name strabismus)))
(printout t "Patient has strabismus. Causes are genetics, inappropriate development of the brain,
Treatment: strabismus eyeglasses or surgery" crlf)
)

(defrule floater "This tests Floater disease"
(symptom(name "tiny spots or specks that float across your field of vision."))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name floater)))
(printout t "Patient has Floater which is caused by old-age genetics or torn retina
Treatment: eye surgery" crlf))


(defrule keratoconus_test "This tests Keratoconus disease"
(symptom(name "loss of vision"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name keratoconus)))
(printout t "Patient has Keratoconus which is caused by weakening of corneal tissue
Treatment: keratoconus eyeglasses or soft contact lenses " crlf)
)


(defrule  conjunctivitis_pinkeye_test "This tests Conjunctivitis (pinkeye) disease"
(symptom(name "redness and pain in the eye"))
(patient (age "55"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name dry_eye)))
(printout t "Patient has Conjunctivitis (pinkeye) which is caused by bacheria or allergic
Treatment: antibiotic eye drops or allegy eye drop " crlf)
(printout t "Patient has Conjunctivitis (pinkeye)" crlf)
)

(defrule  amblyopia_test "This tests Amblyopia disease"
(symptom(name "eye fails to achieve normal visual acuity"))
(patient (age "5"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name Amblyopia)))
(printout t "Patient has Amblyopia" crlf)
)


(defrule  color_blindness_test "This tests Color blindness disease"
(symptom(name "eye fails to achieve normal visual acuity"))
(patient (age "5"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name amblyopia)))
(printout t "Patient has Amblyopia (lazyeye)" crlf)
)
