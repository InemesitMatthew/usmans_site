import 'models/drug_model.dart';

List<Drug> drugs = [
  Drug(
    name: "Amlodipine",
    brandNames: ['Katerzia', 'Norliqva', 'Norvasc'],
    classification: 'Calcium Channel Blockers',
    frequency:
        'Amlodipine is usually taken once a day. Adults commonly take 5 mg or 10 mg tablets, though smaller or elderly patients might start on a lower dose, such as 2.5 mg. It is available as an oral tablet, oral liquid (1 mg/mL), and oral suspension (1 mg/mL).',
    indication:
        'Amlodipine is used to treat high blood pressure and certain types of chest pain (angina) caused by narrowing of the blood vessels. It helps by relaxing blood vessels so that the heart can pump blood more easily, lowering blood pressure and reducing the heart’s workload.',
    interactions:
        'Amlodipine may interact with other medications that affect blood pressure and heart function, such as beta-blockers. Alcohol can also further lower blood pressure. It is important to tell your doctor about all other medicines, vitamins, and supplements you are taking.',
    caution:
        'Use amlodipine with caution if you have severe heart problems, liver disease, or if you are elderly, as you may be more sensitive to its effects. Standing up too quickly might make you feel dizzy due to a drop in blood pressure. Avoid alcohol while taking this medication.',
    additionalInformation:
        'Take amlodipine at the same time every day, with or without food. If you miss a dose, take it as soon as you remember unless it’s nearly time for your next dose. Regular blood pressure checks are important to ensure the medicine is working effectively. Store the tablets and oral solution at room temperature away from moisture and heat; if using the suspension, keep it refrigerated and do not freeze.',
    drugActions:
        'Amlodipine works by blocking calcium channels in the smooth muscle of blood vessels. This action relaxes the blood vessels, leading to lower blood pressure and reduced strain on the heart.',
    contraindications:
        'Amlodipine should not be used by individuals who are allergic to it or other calcium channel blockers. It should be used cautiously in people with very low blood pressure, heart failure, or significant liver disease.',
    sideEffects:
        'Common side effects include swelling in the legs or ankles, dizziness, headache, and flushing (a feeling of warmth or tingling). In rare cases, more serious effects such as worsening chest pain or signs of a heart attack may occur. If you experience any severe symptoms, seek medical help immediately.',
    prescriptionType: 'Amlodipine is available by prescription only.',
    articlePath: 'assets/articles/Amlodipine.pdf',
  ),
  Drug(
    name: "Acetaminophen",
    brandNames: [
      'Actamin',
      'Anacin AF',
      'Aurophen',
      'Bromo Seltzer',
      'Children\'s Tylenol',
      'Mapap',
      'M-Pap',
      'Pharbetol',
      'Silapap Childrens',
      'Tactinal',
      'Tempra Quicklets',
      'Tycolene',
      'Tylenol',
      'Vitapap',
    ],
    classification: 'Miscellaneous Analgesics',
    indication:
        'Acetaminophen is used to relieve mild to moderate pain and reduce fever. It is commonly used for headaches, muscle aches, arthritis, backaches, toothaches, sore throats, colds, and the flu.',
    frequency:
        'Typically taken orally every 4 to 6 hours as needed, ensuring that the total dose does not exceed 4000 mg per day.',
    interactions:
        'May interact with other acetaminophen-containing products, alcohol, and blood thinners (e.g., warfarin), so it’s important to avoid duplication.',
    caution:
        'Use caution in patients with liver disease or chronic alcohol use because overdose can lead to severe liver damage.',
    additionalInformation:
        'Follow dosing instructions carefully and complete the full course as needed. Maintain proper hydration during treatment.',
    drugActions:
        'Acetaminophen is thought to reduce pain and fever by inhibiting specific enzymes in the brain (possibly COX-3) but does not significantly reduce inflammation.',
    contraindications:
        'Do not use if you are allergic to acetaminophen or have severe liver disease.',
    sideEffects:
        'Common side effects include nausea, vomiting, diarrhea, and rash. Rarely, severe allergic reactions or liver damage may occur.',
    prescriptionType: 'Acetaminophen is available over-the-counter.',
    articlePath: 'assets/articles/Acetaminophen.pdf',
  ),
  Drug(
    name: "Amoxicillin",
    brandNames: ['Amoxil', 'Trimox', 'Amoxicot', 'Moxatag', 'and others'],
    classification: 'Antibiotic (Penicillin-type)',
    indication:
        'Amoxicillin is used to treat various bacterial infections such as respiratory infections, urinary tract infections, ear infections, and skin infections by stopping the growth of bacteria. It is also used in combination with other medications to treat Helicobacter pylori infection in stomach ulcers.',
    frequency:
        'Typically taken orally every 8 to 12 hours. The specific dose depends on the infection’s severity and is prescribed by a healthcare provider.',
    interactions:
        'May interact with blood thinners (e.g., warfarin), methotrexate, tetracyclines, and certain vaccines. Inform your doctor of all medications you are taking.',
    caution:
        'Use caution in patients with a history of penicillin or cephalosporin allergy, and in those with kidney disease or who are pregnant or breastfeeding.',
    additionalInformation:
        'It is important to complete the full course of treatment even if you feel better early, and to drink plenty of fluids during treatment.',
    drugActions:
        'Amoxicillin works by inhibiting the synthesis of the bacterial cell wall, leading to the death of the bacteria.',
    contraindications:
        'Contraindicated in individuals with known hypersensitivity to penicillin antibiotics or any ingredients in the formulation',
    sideEffects:
        'Common side effects include nausea, vomiting, diarrhea, and rash. Serious reactions, such as severe allergic responses, may occur rarely.',
    prescriptionType: 'Acetaminophen is available over-the-counter.',
    articlePath: 'assets/articles/Amoxicillin.pdf',
  ),
  Drug(
    name: "Xylazine",
    brandNames: ['No brand name (typically used as a veterinary medication)'],
    classification: 'Alpha-2 Adrenergic Agonist',
    indication:
        'Xylazine is used as a sedative, anesthetic, and muscle relaxant in veterinary medicine. It is commonly used in horses and cattle to provide sedation during procedures such as surgery or diagnostic imaging and as a pre anesthetic for both local and general anesthesia.',
    frequency:
        'Xylazine is administered via injection (intravenous or intramuscular) with dosage and frequency based on the animal’s weight, condition, and procedure. In veterinary settings, it is usually given as a one-time dose, with effects lasting about 1 to 2 hours.',
    interactions:
        'Xylazine may interact with other sedatives, anesthetics, or medications that depress the central nervous system, such as barbiturates or opioids. Caution is advised when used with other drugs that affect blood pressure.',
    caution:
        'Xylazine should be used with caution in animals with heart, liver, or kidney disease, and in pregnant animals. It is strictly for veterinary use; accidental human exposure can lead to serious effects such as respiratory depression, coma, or death.',
    additionalInformation:
        'Xylazine is for veterinary use only and must be administered by a licensed veterinarian. It is regulated by federal law and should be handled with care to avoid accidental exposure.',
    drugActions:
        'Xylazine works by stimulating alpha-2 adrenergic receptors in the central nervous system, resulting in sedation, pain relief, and muscle relaxation. It also causes mild vasoconstriction, which can affect blood pressure.',
    contraindications:
        'Xylazine is contraindicated in animals with known hypersensitivity to the drug and should not be used in humans. It is also not recommended for use in animals with certain cardiovascular or respiratory conditions without close monitoring.',
    sideEffects:
        'Common side effects include sedation, reduced heart rate (bradycardia), low blood pressure (hypotension), and respiratory depression. Serious side effects can include severe heart arrhythmias, excessive sedation, or prolonged recovery. Veterinary intervention is required if adverse reactions occur.',
    prescriptionType:
        'Xylazine is available by prescription only (veterinary use only).',
    articlePath: 'assets/articles/Xylazine.pdf',
  ),
  Drug(
    name: "Benazepril",
    brandNames: ['Lotensin'],
    classification: 'Angiotensin Converting Enzyme (ACE) Inhibitor',
    indication:
        'Benazepril is used to treat high blood pressure in adults and children (6+ years) to lower the risk of stroke and heart attack.',
    frequency:
        'It is usually taken once daily, with typical adult doses ranging from 10 to 40 mg.',
    interactions:
        'It may interact with diuretics, NSAIDs, potassium supplements, and medications like aliskiren.',
    caution:
        'Xylazine should be used with caution in animals with heart, liver, or kidney disease, and in pregnant animals. It is strictly for veterinary use; accidental human exposure can lead to serious effects such as respiratory depression, coma, or death.',
    additionalInformation:
        'Do not use if you are allergic to ACE inhibitors. Avoid in pregnancy (especially after the first trimester) and use with caution if you have kidney, liver, or heart problems.',
    drugActions:
        'It works by blocking the ACE enzyme, which relaxes blood vessels and lowers blood pressure.',
    contraindications:
        'Do not use if allergic to ACE inhibitors or if you have a history of angioedema. It is contraindicated during pregnancy after the first trimester.',
    sideEffects:
        'Common side effects include headache, dizziness, and a dry cough. Serious side effects may include swelling of the face or throat, kidney problems, high potassium levels, and liver issues.',
    prescriptionType: 'Benazepril is available by prescription only.',
    articlePath: 'assets/articles/Benazepril.pdf',
  ),
  Drug(
    name: "Lecanemab (Leqembi)",
    brandNames: ['Leqembi'],
    classification: 'Miscellaneous Central Nervous System Agents',
    indication:
        'Lecanemab is used to treat Alzheimer’s disease in patients with mild cognitive impairment or mild dementia. It helps slow the progression of Alzheimer’s by reducing amyloid-beta plaques in the brain.',
    frequency:
        'Administered via intravenous infusion every 2 weeks for the first 18 months; after that, the frequency may extend to every 4 weeks, depending on treatment response.',
    interactions:
        'Lecanemab has few known interactions; however, caution is advised when used with blood thinners, as this may increase the risk of bleeding.',
    caution:
        'There is a risk of Amyloid-Related Imaging Abnormalities (ARIA), which may cause brain swelling or small bleeding spots. Patients should be regularly monitored, especially if they have a history of brain bleeds or neurological conditions.',
    additionalInformation:
        'Lecanemab is not a cure for Alzheimer’s but may help slow the progression of cognitive decline. Regular follow-up with a healthcare provider is important.',
    drugActions:
        'Lecanemab works by binding to and helping remove amyloid-beta plaques and protofibrils in the brain, thereby slowing the progression of Alzheimer’s disease.',
    contraindications:
        'Do not use if the patient is allergic to lecanemab or if there is a history of severe brain hemorrhages or conditions unrelated to Alzheimer’s dementia.',
    sideEffects:
        'Common side effects include infusion-related reactions such as fever, chills, nausea, and headache. Serious side effects include brain swelling or bleeding (ARIA) and allergic reactions that require immediate medical attention.',
    prescriptionType: 'Lecanemab is available by prescription only.',
    articlePath: 'assets/articles/Lecanemab.pdf',
  ),
  Drug(
    name: "Rivaroxaban",
    brandNames: ['Xarelto', 'Xarelto Starter Pack', 'Factor Xa Inhibitors'],
    classification: 'Factor Xa Inhibitors',
    indication:
        'Rivaroxaban is an anticoagulant used to prevent and treat blood clots. It is prescribed for conditions such as deep vein thrombosis (DVT), pulmonary embolism (PE), and atrial fibrillation to lower the risk of stroke. It is also used to prevent clots following hip or knee replacement surgery, in immobile hospitalized patients, and in children after heart surgery.',
    frequency:
        'For DVT/PE treatment, the initial dose is typically 15 mg twice daily for 21 days, followed by 20 mg once daily. For stroke prevention in atrial fibrillation, the usual dose is 20 mg once daily with food. After orthopedic surgery, it is generally taken as 10 mg once daily. Pediatric dosing is weight-based.',
    interactions:
        'Rivaroxaban interacts with medications that affect bleeding risk, such as NSAIDs, antiplatelet drugs, and other anticoagulants. It may also interact with certain antifungals and antibiotics that affect liver enzymes, while drugs like rifampin and St. John’s wort can reduce its effectiveness.',
    caution:
        'Do not stop rivaroxaban suddenly, as this can increase the risk of clot formation. Use caution if you have kidney or liver disease or a history of bleeding disorders. Inform healthcare providers before any surgical or dental procedures.',
    additionalInformation:
        'Take rivaroxaban exactly as prescribed. Missing a dose increases the risk of clotting, and do not double up on doses. Regular follow-up and monitoring are important.',
    drugActions:
        'Rivaroxaban works by selectively inhibiting Factor Xa, an enzyme critical for blood clot formation, thereby reducing the formation of harmful clots.',
    contraindications:
        'Rivaroxaban is contraindicated in patients with active, uncontrolled bleeding, severe liver disease, or known allergy to the drug. It should be avoided during pregnancy and breastfeeding unless approved by a doctor.',
    sideEffects:
        'Common side effects include bleeding, nausea, stomach pain, and fatigue. Serious side effects include uncontrolled bleeding, blood in urine or stool, severe headache or dizziness, and signs of spinal blood clots (back pain, numbness, or paralysis).',
    prescriptionType: 'Rivaroxaban is available by prescription only.',
    articlePath: 'assets/articles/Rivaroxaban.pdf',
  ),
  Drug(
    name: "Ibuprofen",
    brandNames: [
      'Advil',
      'Genpril',
      'IBU',
      'Midol IB',
      'Motrin IB',
      'Proprinal',
      'Smart Sense Children\'s Ibuprofen',
    ],
    classification: 'NSAID (Nonsteroidal Anti-Inflammatory Drug)',
    indication:
        'Ibuprofen is used to relieve pain, reduce inflammation, and lower fever. It works well for common issues such as headaches, toothaches, back pain, arthritis, menstrual cramps, and minor injuries. It can be used by adults and by children aged 6 months and older.',
    frequency:
        'Adults generally take 200–800 mg every 4–6 hours as needed, with a maximum of 3200 mg per day. Pediatric doses depend on the child\'s age and weight.',
    interactions:
        'Ibuprofen can interact with blood thinners, certain antidepressants, and other pain relievers. It may also interfere with the heart-protective effects of aspirin. Always let your doctor know what other medications or supplements you are taking.',
    caution:
        'Use ibuprofen carefully if you have heart problems, high blood pressure, stomach ulcers, or kidney or liver disease. Taking too much or using it too long can lead to stomach bleeding or increase the risk of a heart attack or stroke.',
    additionalInformation:
        'Take ibuprofen with food or milk to help prevent stomach upset. Follow the label instructions or your doctor’s directions carefully, and never exceed the recommended dose.',
    drugActions:
        'Ibuprofen works by blocking the enzymes that create prostaglandins, chemicals that cause pain, swelling, and fever.',
    contraindications:
        'Do not use ibuprofen if you are allergic to it or if you’ve had a serious reaction to other NSAIDs like aspirin. It should not be used if you have active stomach bleeding or a history of peptic ulcers without medical supervision.',
    sideEffects:
        'Common side effects include nausea, vomiting, gas, headache, and dizziness. Serious side effects can include signs of stomach bleeding (such as black or bloody stools or vomiting blood), chest pain, or allergic reactions like swelling of the face or throat.',
    prescriptionType: 'Ibuprofen is available over the counter.',
    articlePath: 'assets/articles/Ibuprofen.pdf',
  ),
  Drug(
    name: "Naloxone",
    brandNames: ['Narcan', 'Rezenopy', 'Kloxxado', 'Zimhi'],
    classification: 'Opioid Antagonists',
    indication:
        'Naloxone is used to quickly reverse the effects of an opioid overdose, which may include slowed or stopped breathing, loss of consciousness, or other life-threatening symptoms. It is used in emergency situations by healthcare providers, first responders, or by family members.',
    frequency:
        'Typically given as a single dose; if the patient does not respond, an additional dose may be administered every 2-3 minutes until normal breathing is restored and emergency help arrives. It is available as a nasal spray or injection.',
    interactions:
        'Naloxone has minimal interactions, but if a person is dependent on opioids, it may cause withdrawal symptoms. Caution should be used when combined with other sedative medications.',
    caution:
        'Naloxone is for emergency use only. It can cause immediate opioid withdrawal, which may be uncomfortable but is necessary to reverse the overdose. After administration, the patient must receive further medical care as its effects are short-lived.',
    additionalInformation:
        'Naloxone is often carried by individuals at risk of an opioid overdose, such as family members and first responders. Training on its proper use is recommended.',
    drugActions:
        'Naloxone works by binding to opioid receptors in the brain, displacing opioids and reversing their effects, especially respiratory depression.',
    contraindications:
        'Naloxone should not be used if the person is known to be allergic to it. It is not effective for overdoses of non-opioid drugs.',
    sideEffects:
        'Common side effects include withdrawal symptoms such as nausea, sweating, shaking, and irritability. In rare cases, it can cause seizures or heart rhythm problems, requiring immediate medical attention.',
    prescriptionType:
        'Naloxone is available in both prescription and over-the-counter forms, depending on the region and specific product.',
    articlePath: 'assets/articles/Naloxone.pdf',
  ),
  Drug(
    name: "Atorvastatin",
    brandNames: ['Lipitor'],
    classification: 'HMG-CoA Reductase Inhibitor (Statin)',
    indication:
        'Atorvastatin is used to lower cholesterol and triglyceride levels, reducing the risk of heart disease, stroke, and heart attack. It is used alongside diet, exercise, and weight control measures.',
    frequency:
        'Typically taken once daily, usually in the evening. Dosage ranges from 10 mg to 80 mg, depending on individual cholesterol levels and risk factors.',
    interactions:
        'May interact with grapefruit products, other cholesterol-lowering medications, and drugs that affect liver enzymes. Inform your doctor of any supplements or medications you are taking.',
    caution:
        'Use caution in patients with liver or kidney disease. It is contraindicated during pregnancy and breastfeeding. Regular monitoring of liver function and cholesterol levels is necessary.',
    additionalInformation:
        'Lifestyle modifications, such as diet and exercise, are recommended while taking atorvastatin.',
    drugActions:
        'Atorvastatin works by inhibiting HMG-CoA reductase, the enzyme responsible for cholesterol production in the liver, thereby lowering LDL cholesterol and triglycerides while increasing HDL cholesterol.',
    contraindications:
        'Contraindicated in patients with active liver disease, known hypersensitivity to statins, or in pregnant or breastfeeding women.',
    sideEffects:
        'Common side effects include muscle pain, nausea, diarrhea, and headache. Serious side effects may include liver enzyme elevations, muscle breakdown (rhabdomyolysis), and gastrointestinal issues.',
    prescriptionType: 'Atorvastatin is available by prescription only.',
    articlePath: 'assets/articles/Lipitor.pdf',
  ),
  Drug(
    name: "Aztreonam",
    brandNames: ['Azactam'],
    classification: 'Monobactam Antibiotic',
    indication:
        'Aztreonam is used to treat serious bacterial infections, particularly those caused by Gram-negative bacteria. It is often used in patients who are allergic to penicillins or cephalosporins.',
    frequency:
        'Usually administered via intravenous injection every 6 to 8 hours, depending on the severity of the infection and patient condition.',
    interactions:
        'May interact with other antibiotics and requires dosage adjustments in patients with renal impairment. Always inform your healthcare provider about all medications being used.',
    caution:
        'Use with caution in patients with kidney problems and those with a history of allergic reactions to beta-lactam antibiotics.',
    additionalInformation:
        'Aztreonam is typically administered in a hospital setting and should be given for the full course of treatment to avoid bacterial resistance.',
    drugActions:
        'Aztreonam works by inhibiting bacterial cell wall synthesis, leading to the death of the bacteria, particularly Gram-negative organisms.',
    contraindications:
        'Contraindicated in individuals with known hypersensitivity to aztreonam or other beta-lactam antibiotics.',
    sideEffects:
        'Common side effects include nausea, diarrhea, and rash. Serious allergic reactions or changes in kidney function may occur in rare cases.',
    prescriptionType: 'Aztreonam is available by prescription only.',
    articlePath: 'assets/articles/Aztreonam.pdf',
  ),
  Drug(
    name: "Aripiprazole",
    brandNames: ['Abilify'],
    classification: 'Atypical Antipsychotic',
    indication:
        'Aripiprazole is used to treat psychiatric conditions such as schizophrenia, bipolar disorder, and as an adjunct for major depressive disorder. It helps balance dopamine and serotonin levels in the brain to reduce symptoms like hallucinations, mood swings, and depression.',
    frequency:
        'Typically taken once daily in the form of an oral tablet or liquid solution, with the dosage tailored to the patient’s condition by their doctor.',
    interactions:
        'May interact with other central nervous system medications and drugs that affect liver enzymes. Always inform your healthcare provider about all medications you are taking.',
    caution:
        'Consistent daily dosing is important, and abrupt discontinuation should be avoided to prevent withdrawal symptoms.',
    additionalInformation:
        'Aztreonam is typically administered in a hospital setting and should be given for the full course of treatment to avoid bacterial resistance.',
    drugActions:
        'Aripiprazole works by partially stimulating dopamine and serotonin receptors, helping to stabilize mood and reduce psychotic symptoms.',
    contraindications:
        'Contraindicated in individuals with a known hypersensitivity to aripiprazole.',
    sideEffects:
        'Common side effects include weight gain, restlessness, dizziness, nausea, and headache. Serious side effects may include tardive dyskinesia and metabolic changes.',
    prescriptionType: 'Aripiprazole is available by prescription only.',
    articlePath: 'assets/articles/Aripiprazole.pdf',
  ),
  Drug(
    name: "Omeprazole",
    brandNames: [
      'Various brands including FIRST Omeprazole',
      'PriLOSEC',
      'PriLOSEC OTC',
      'Zegerid (Original Formulation)',
    ],
    classification: 'Proton Pump Inhibitors (PPIs)',
    indication:
        'Omeprazole is used to treat conditions caused by excess stomach acid. It helps heal non-cancerous stomach ulcers, gastroesophageal reflux disease (GERD), active duodenal ulcers, Zollinger-Ellison syndrome, and erosive esophagitis. It is also used with antibiotics to treat gastric ulcers caused by Helicobacter pylori infection. Over-the-counter omeprazole is used in adults to control heartburn that occurs two or more days per week.',
    frequency:
        'Prescription omeprazole is typically taken once daily in the form of an oral delayed-release capsule or tablet (available in 10 mg, 20 mg, or 40 mg doses). Over-the-counter omeprazole is taken as a 14-day course, with improvements usually seen within 1 to 4 days. A new course should not start until at least 4 months have passed.',
    interactions:
        'Omeprazole may interact with medications such as digoxin, clopidogrel, methotrexate, and certain antibiotics. It can also reduce the absorption of drugs that require an acidic environment, affecting their effectiveness. Always inform your healthcare provider about all other medications you are taking.',
    caution:
        'Use omeprazole with caution if you have kidney or liver disease or low magnesium levels. Long-term use may increase the risk of bone fractures, fundic gland polyps, and vitamin B12 deficiency. It is not intended for immediate relief of heartburn symptoms.',
    additionalInformation:
        'Take omeprazole exactly as directed on the label or by your doctor. Complete the full prescribed course even if symptoms improve. Store at room temperature away from moisture and heat. If using the OTC version, follow the 14-day treatment and wait at least 4 months before starting another course.',
    drugActions:
        'Omeprazole works by blocking the proton pump (H+/K+ ATPase) in the stomach lining, which stops the production of gastric acid.',
    contraindications:
        'Do not use omeprazole if you are allergic to it or other proton pump inhibitors, or if you have experienced severe allergic reactions with similar medications. It should be used with caution in patients with a history of severe liver problems or those taking certain HIV medications (e.g., those containing rilpivirine).',
    sideEffects:
        'Common side effects include headache, stomach pain, nausea, diarrhea, and gas. Serious side effects may include signs of gastrointestinal bleeding (such as black or bloody stools or vomiting that looks like coffee grounds), vision changes, severe rash, or symptoms of liver problems (like yellowing of the skin or eyes). Seek immediate medical attention if serious side effects occur.',
    prescriptionType:
        'Omeprazole is available by prescription and over-the-counter (OTC).',
    articlePath: 'assets/articles/Omeprazole.pdf',
  ),
  Drug(
    name: "Azithromycin",
    brandNames: [
      'Azasite',
      'Azithromycin 3 Day Dose Pack',
      'Azithromycin 5 Day Dose Pack',
      'Zithromax',
      'Zithromax TRI-PAK',
      'Zithromax Z-Pak',
      'Zmax',
    ],
    classification: 'Macrolides',
    indication:
        'Azithromycin is an antibiotic used to treat various bacterial infections such as respiratory infections, skin infections, ear infections, eye infections, and sexually transmitted diseases. It works by fighting the bacteria causing the infection.',
    frequency:
        'Azithromycin is typically taken once daily. Depending on the infection, it is often prescribed as a 3-day or 5-day dose pack. Follow your doctor’s instructions for the exact dosing schedule and duration.',
    interactions:
        'Azithromycin may interact with antacids containing aluminum or magnesium, as well as with other medications like blood thinners and certain heart drugs. Always tell your doctor about all other medications, supplements, or herbal products you are taking.',
    caution:
        'Use caution if you have liver or kidney problems, or if you have had allergic reactions to macrolide antibiotics (such as clarithromycin, erythromycin, or telithromycin). It is important to follow your doctor’s advice to avoid unwanted effects.',
    additionalInformation:
        'Take azithromycin for the full prescribed course even if your symptoms improve early. Do not use it for immediate relief of symptoms, and do not save any unused medication for later use.',
    drugActions:
        'Azithromycin works by stopping the growth of bacteria, helping your body fight the infection.',
    contraindications:
        'Do not use azithromycin if you are allergic to it or have previously experienced liver problems or jaundice from taking it, or if you are allergic to similar drugs like clarithromycin, erythromycin, or telithromycin.',
    sideEffects:
        'Common side effects include diarrhea, nausea, vomiting, stomach pain, and headache. Serious side effects may include signs of an allergic reaction (such as hives, difficulty breathing, or swelling of the face or throat) or severe skin reactions. If you experience these, seek medical help immediately.',
    prescriptionType: 'Azithromycin is available by prescription only.',
    articlePath: 'assets/articles/Azithromycin.pdf',
  ),
  Drug(
    name: "Simvastatin",
    brandNames: ['Zocor'],
    classification: 'Statins',
    indication:
        'Simvastatin is used to lower "bad" cholesterol (LDL) and triglycerides while increasing "good" cholesterol (HDL) in the blood. This helps reduce the risk of heart attack, stroke, and other cardiovascular complications, especially in patients with risk factors like diabetes or coronary heart disease.',
    frequency:
        'Simvastatin is usually taken once daily, often at bedtime or with an evening meal. The dose is tailored to the patient’s needs, with typical doses ranging from 5 mg to 40 mg daily.',
    interactions:
        'Simvastatin can interact with medications such as cyclosporine, danazol, gemfibrozil, nefazodone, certain antibiotics and antifungal agents, and others. It also interacts with grapefruit and grapefruit juice, which can increase its effects and the risk of side effects. Always inform your doctor of all medications and supplements you are taking.',
    caution:
        'There is a risk of muscle breakdown (rhabdomyolysis) that can lead to kidney failure, particularly in older adults, patients with kidney disease, or those with poorly controlled hypothyroidism. Avoid consuming grapefruit products while taking simvastatin.',
    additionalInformation:
        'Simvastatin should be taken exactly as prescribed, and it is important to complete the full course of treatment. Regular blood tests may be needed to monitor liver function and muscle health. This medication is only part of a complete treatment program that also includes lifestyle changes like diet and exercise.',
    drugActions:
        'Simvastatin works by inhibiting the HMG-CoA reductase enzyme in the liver, which is responsible for producing cholesterol. This leads to lower levels of LDL cholesterol and triglycerides, while raising HDL cholesterol.',
    contraindications:
        'Simvastatin should not be used by individuals who are allergic to it or have active liver disease. It is contraindicated during pregnancy and breastfeeding because it may harm the unborn baby or nursing infant.',
    sideEffects:
        'Common side effects include headache, constipation, nausea, and cold-like symptoms. Serious side effects may include muscle pain or weakness, signs of kidney problems, or symptoms of liver issues such as yellowing of the skin or eyes. If these occur, seek medical help immediately.',
    prescriptionType: 'Simvastatin is available by prescription only.',
    articlePath: 'assets/articles/Simvastatin.pdf',
  ),
];
