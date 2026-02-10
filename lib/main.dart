import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CV - Fredy F. PONTURAT",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CVScreen(),
    );
  }
}

class CVScreen extends StatelessWidget {
  const CVScreen({super.key});

  Widget sectionTitle(String text) => Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 6.0),
        child: Text(text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      );

  Widget bullet(String text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fredy Fendy PONTURAT — CV"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 80),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fredy Fendy PONTURAT",
                      style:
                          Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 6),
                  Wrap(spacing: 12, runSpacing: 6, children: const [
                    Text("ffponturat@uhelp.net"),
                    Text("|"),
                    Text("+509 31 79 1014"),
                    Text("|"),
                    Text("6, rue Shalom, Delmas 33, Haïti"),
                    Text("|"),
                    Text("www.linkedin.com/in/ffponturat"),
                  ]),

                  sectionTitle("Formation"),
                  Text(
                      "Mineure, Gestion — Ecole Supérieure d'Infotronique d'Haïti (ESIH), Port-au-Prince",
                      style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 4),
                  Text(
                      "Moyennes : L1 17,45/20 · L2 16,61/20 · L3 17,19/20",
                      style: const TextStyle(fontSize: 13)),
                  const SizedBox(height: 6),
                  Text(
                      "Haitian Education and Leadership Program (HELP) — Octobre 2022 - Présent",
                      style: const TextStyle(fontSize: 14)),
                  bullet(
                      "Boursier d'excellence compétitif (2022–2026). Programme de leadership, apprentissage par le service, cours informatique et anglais."),

                  sectionTitle("Expérience professionnelle"),
                  Text(
                      "Chargé de Centre d'Hébergement Educatif (CCHE) — HELP, Port-au-Prince",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)),
                  Text("Janvier 2024 - Août 2024",
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black54)),
                  bullet(
                      "Superviser et coordonner la vie quotidienne d'un dortoir de 51 étudiants."),
                  bullet(
                      "Gérer le budget mensuel de nutrition et embaucher du personnel."),
                  bullet(
                      "Produire des rapports de suivi pour optimiser les ressources."),

                  Text("Stagiaire IT — HELP, Port-au-Prince",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)),
                  Text("Septembre 2023 – Décembre 2023",
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black54)),
                  bullet(
                      "Administrer les systèmes d'information ; maintenir équipements ; réaménager le réseau câblé."),
                  bullet(
                      "Installer/configurer logiciels, scanners et imprimantes pour 5 départements."),

                  Text("Stagiaire — Département des opérations, HELP",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)),
                  Text("Juin 2023 - Août 2023",
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black54)),
                  bullet(
                      "Contribuer à l'implémentation d'un système d'inventaire ; inventorier >1000 matériels."),

                  sectionTitle("Volontariat & Bénévolat"),
                  Text(
                      "Bénévole — Club Rotaract Port-au-Prince Champ de Mars",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)),
                  Text("Août 2024 - Présent",
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black54)),
                  bullet(
                      "Organisation d'actions communautaires ; collecte de fonds ; communication."),
                  Text("Tuteur — HELP (Mai 2024 - Juillet 2024)"),
                  bullet(
                      "Encadrement et suivi individuel de 8 étudiants."),
                  Text(
                      "Coéquipier — Projet AI Essentials (Mai 2024 - Août 2024)"),
                  bullet(
                      "Conception de contenus pédagogiques; rédaction de proposition et budget."),

                  sectionTitle("Compétences & Langues"),
                  bullet(
                      "Créole Haïtien (langue maternelle) · Français (C1) · Anglais (B1)"),
                  bullet(
                      "Microsoft 365, Google Workspace, POO, Microsoft SQL Server, ASP.NET, Windows & Linux, leadership, communication, gestion de projet."),

                  sectionTitle("Distinctions & Certifications"),
                  bullet(
                      "Hult Prize 2023 (4ème) · Bourse d'excellence et de leadership (HELP) · Liste d'honneur académique (2023, 2024) · Premier prix débat (Rotaract)."),
                  bullet(
                      "Premiers secours (Croix-Rouge); Introduction to SQL & Understanding Data Science (Datacamp)."),

                  sectionTitle("Centres d'intérêt"),
                  Text(
                      "Innovation technologique · Engagement communautaire · Systèmes intelligents · Éducation numérique · Danse compas · Voyages",
                      style: const TextStyle(fontSize: 14)),

                  const SizedBox(height: 24),
                  Center(
                      child: Text(
                          "Disponible sur demande — ffponturat@uhelp.net",
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black54))),
                ]),
          ),
        ),
      ),
    );
  }
}
