<img src="https://github.com/inab-certh/OpenPVSignal/blob/master/logo.png" width="217" height="98" align="right">

# `OpenPVSignal`: Advancing Information Search, Sharing and Reuse on Pharmacovigilance Signals via FAIR Principles and Semantic Web Technologies

**OpenPVSignal** is an ontology aiming to foster the publication of Pharmacovigilance Signal information, which is currently communicated by drug regulatory authorities via their Newsletters or Web sites as free-text reports. To this end, **OpenPVSignal** relies on *Linked Data* and *Semantic Web* technologies, and conforms to [FAIR data principles](https://www.force11.org/group/fairgroup/fairprinciples), aspiring to advance search, sharing and reuse of information about Pharmacovigilance Signals.

**OpenPVSignal** is currently under its final development phase, while a scientific paper describing its design, development and validation has been published in "Frontiers in Pharmacology" and can be found [here](https://www.frontiersin.org/articles/10.3389/fphar.2018.00609/full).

In this repository you may find:
1. The [`OpenPVSignal ontology model`](OpenPVSignal.owl).
2. Indicative instantiations of the OpenPVSignal ontology contained in the [`examples`](examples) folder, concerning 3 signal reports communicated via:
- The WHO Pharmaceuticals Newsletter:
  - Instantiation: [`WHO_UMC_Pharmaceuticals_Newsletter_2017_3_Ibrutinib_and_pneumonitis.owl`](examples/WHO_UMC_Pharmaceuticals_Newsletter_2017_3_Ibrutinib_and_pneumonitis.owl)
  - Source: [WHO Pharmaceuticals Newsletter, no. 3, 2017, pp. 14-19](http://apps.who.int/iris/bitstream/10665/258799/1/WPN-2017-03-eng.pdf?ua=1)
- The FDA Drug Safety Communications Web site:
  - Instantiation: [`FDA_Drug_Safety_Communication_2_3_2011_PPIs_and_low_magnesium_levels.owl`](examples/FDA_Drug_Safety_Communication_2_3_2011_PPIs_and_low_magnesium_levels.owl)
  - Source: [FDA Drug Safety Communication: Low magnesium levels can be associated with long-term use of Proton Pump Inhibitor drugs (PPIs)](https://www.fda.gov/Drugs/DrugSafety/ucm245011.htm)
- The Netherlands Pharmacovigilance Center - Lareb Web site:
  - Instantiation: [`Lareb_2013_3_Esomeprazole_and_tinnitus.owl`](examples/Lareb_2013_3_Esomeprazole_and_tinnitus.owl)
  - Source: [https://databankws.lareb.nl/Downloads/KWB_2013_3_(Es)omeprazole_and_tinnitus.pdf](https://databankws.lareb.nl/Downloads/KWB_2013_3_(Es)omeprazole_and_tinnitus.pdf)

**OpenPVSignal** is versioned following the [semantic versioning scheme](https://semver.org/), applying the guidelines provided [here](https://github.com/dbrock/semver-howto/blob/master/README.md). The last part of the version refers to the date that this version has been created. For example, version 0.8.20171211 is the version that has been first commited on GitHub, on 2017, 11th of December. Typically, each new version should be worked on a branch, following the rationale presented [here](http://nvie.com/posts/a-successful-git-branching-model/).

> For further information or guidance on how you can use **OpenPVSignal** or contribute in its further development, please contact Mr. Pantelis Natsiavas (pnatsiavas@certh.gr) and Dr. Vassilis Koutkias (vkoutkias@certh.gr).
