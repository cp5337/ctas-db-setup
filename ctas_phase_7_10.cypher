// ** Phase 7: Execution of Cyber and Physical Attacks **

// Create Phase Node
CREATE (:Phase {name: "Execution of Cyber and Physical Attacks", id: "7.0", definition: "Carrying out the planned attacks on the identified targets, whether through cyber means or physical actions."});

// Create Task Nodes for Phase 7
CREATE (:Task {name: "Disabling Security Systems", id: "7.1", description: "Neutralizing security defenses to facilitate further attacks.", ndex_metadata: "Security Infrastructure Bypass"});
CREATE (:Task {name: "Targeting Critical Infrastructure", id: "7.2", description: "Attacking key systems in energy, water, or financial sectors.", ndex_metadata: "Critical Infrastructure"});
CREATE (:Task {name: "Deploying WMD (Chemical, Biological, Radiological, Nuclear)", id: "7.3", description: "Using weapons of mass destruction.", ndex_metadata: "CBRN Threat Integration"});
CREATE (:Task {name: "Data Exfiltration", id: "7.4", description: "Extracting sensitive data from compromised networks.", ndex_metadata: "Sensitive Data Theft"});
CREATE (:Task {name: "Ransomware Deployment", id: "7.5", description: "Encrypting systems and demanding payment for access.", ndex_metadata: "Digital Ransom Attack Mechanisms"});
CREATE (:Task {name: "Targeted Malware", id: "7.6", description: "Deploying malware designed for high-value targets.", ndex_metadata: "Malicious Code Targeting"});

// Create Atomic Technique Nodes for Phase 7
CREATE (:AtomicTechnique {name: "T1562.001", description: "Impair Defenses"});
CREATE (:AtomicTechnique {name: "T1486", description: "Data Encrypted for Impact"});
CREATE (:AtomicTechnique {name: "T1020", description: "Automated Exfiltration"});

// Create HD4 Association Node for Phase 7
CREATE (:HD4 {phase: "Dominate", definition: "Establishing control over the cyber environment and preventing future adversary activities."});

// Create Kill Chain Phase Node for Phase 7
CREATE (:KillChain {phase: "Actions on Objectives", definition: "The adversary achieves their goal, such as stealing data or disabling systems."});

// Define Relationships for Phase 7
MATCH (p:Phase {id: "7.0"}), (t:Task {id: "7.1"})
CREATE (p)-[:CONTAINS_TASK]->(t);

MATCH (t:Task {id: "7.1"}), (a:AtomicTechnique {name: "T1562.001"})
CREATE (t)-[:USES_TECHNIQUE]->(a);

MATCH (t:Task {id: "7.5"}), (a:AtomicTechnique {name: "T1486"})
CREATE (t)-[:USES_TECHNIQUE]->(a);

MATCH (t:Task {id: "7.4"}), (a:AtomicTechnique {name: "T1020"})
CREATE (t)-[:USES_TECHNIQUE]->(a);


// ** Phase 8: Post-Attack Activities and Evasion **

// Create Phase Node
CREATE (:Phase {name: "Post-Attack Activities and Evasion", id: "8.0", definition: "Covering tracks, removing evidence, and using techniques to evade detection after the attack is executed."});

// Create Task Nodes for Phase 8
CREATE (:Task {name: "Deleting Digital Evidence", id: "8.1", description: "Removing traces of activity from networks and devices.", ndex_metadata: "Digital Evidence Tampering"});
CREATE (:Task {name: "Rotating Digital Identities", id: "8.2", description: "Using new identities to avoid detection.", ndex_metadata: "Identity Obfuscation"});
CREATE (:Task {name: "Advanced Obfuscation Techniques", id: "8.3", description: "Using data encoding, fileless malware, or polymorphic malware to evade detection.", ndex_metadata: "Advanced Obfuscation Techniques"});
CREATE (:Task {name: "Evading Detection through Mobility and Safe Houses", id: "8.4", description: "Using secure locations to avoid capture.", ndex_metadata: "Safe House Locations"});
CREATE (:Task {name: "Fileless Malware", id: "8.5", description: "Malware that operates entirely in memory to avoid being traced.", ndex_metadata: "Fileless Malware"});

// Create Atomic Technique Nodes for Phase 8
CREATE (:AtomicTechnique {name: "T1070", description: "Indicator Removal on Host"});
CREATE (:AtomicTechnique {name: "T1553", description: "Subvert Trust Controls"});
CREATE (:AtomicTechnique {name: "T1055", description: "Process Injection"});

// Create HD4 Association Node for Phase 8
CREATE (:HD4 {phase: "Disable", definition: "Disabling or neutralizing adversary persistence and capabilities to prevent future attacks."});

// Define Relationships for Phase 8
MATCH (p:Phase {id: "8.0"}), (t:Task {id: "8.1"})
CREATE (p)-[:CONTAINS_TASK]->(t);

MATCH (t:Task {id: "8.1"}), (a:AtomicTechnique {name: "T1070"})
CREATE (t)-[:USES_TECHNIQUE]->(a);

MATCH (t:Task {id: "8.3"}), (a:AtomicTechnique {name: "T1553"})
CREATE (t)-[:USES_TECHNIQUE]->(a);

MATCH (t:Task {id: "8.5"}), (a:AtomicTechnique {name: "T1055"})
CREATE (t)-[:USES_TECHNIQUE]->(a);

MATCH (t:Task {id: "8.1"}), (h:HD4 {phase: "Disable"})
CREATE (t)-[:ALIGNS_WITH_HD4]->(h);


// ** Phase 9: Major Crimes **

// Create Phase Node
CREATE (:Phase {name: "Major Crimes", id: "9.0", definition: "Engaging in violent crimes to fund operations or create chaos, including robbery, arson, and murder."});

// Create Task Nodes for Phase 9
CREATE (:Task {name: "Murder and Nonnegligent Manslaughter", id: "9.1", description: "Killing individuals for operational gain.", ndex_metadata: "Violent Crime Classification"});
CREATE (:Task {name: "Forcible Rape", id: "9.2", description: "Using sexual violence as a tool of terror.", ndex_metadata: "Violent Crime - Sexual Violence"});
CREATE (:Task {name: "Robbery", id: "9.3", description: "Armed theft for financial or material gain.", ndex_metadata: "Criminal Activity - Armed Robbery"});
CREATE (:Task {name: "Aggravated Assault", id: "9.4", description: "Using violence to intimidate or eliminate opposition.", ndex_metadata: "Assault"});
CREATE (:Task {name: "Burglary", id: "9.5", description: "Breaking into secure locations to steal valuable items.", ndex_metadata: "Burglary Incident Data"});
CREATE (:Task {name: "Arson", id: "9.6", description: "Setting fires to destroy property and create chaos.", ndex_metadata: "Fire and Arson"});

// Create HD4 Association Node for Phase 9
CREATE (:HD4 {phase: "Dominate", definition: "Exerting control over the adversary's environment to prevent future attacks and maintain dominance."});

// Define Relationships for Phase 9
MATCH (p:Phase {id: "9.0"}), (t:Task {id: "9.1"})
CREATE (p)-[:CONTAINS_TASK]->(t);

MATCH (t:Task {id: "9.1"}), (h:HD4 {phase: "Dominate"})
CREATE (t)-[:ALIGNS_WITH_HD4]->(h);


// ** Phase 10: Interaction with Law Enforcement and Exploitation **

// Create Phase Node
CREATE (:Phase {name: "Interaction with Law Enforcement and Exploitation", id: "10.0", definition: "Managing encounters with law enforcement to avoid capture or exploit those interactions to gain intelligence."});

// Create Task Nodes for Phase 10
CREATE (:Task {name: "Bribery and Corruption of Police and Officials", id: "10.1", description: "Offering payments to avoid arrest or prosecution.", ndex_metadata: "Bribery and Corruption"});
CREATE (:Task {name: "Evasion Techniques During Arrest or Interrogation", id: "10.2", description: "Using deception to mislead authorities.", ndex_metadata: "Custodial Evasion Tactics"});
CREATE (:Task {name: "Exploiting Law Enforcement Encounters", id: "10.3", description: "Using interactions with law enforcement to gather intelligence or manipulate outcomes.", ndex_metadata: "Law Enforcement Exploitation"});
