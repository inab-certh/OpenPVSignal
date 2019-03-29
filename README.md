<!---<img src="https://github.com/inab-certh/OpenPVSignal/blob/master/logo.png" width="195" height="88">--->
![](./logo_small.png)

# Advancing Information Search, Sharing and Reuse on Pharmacovigilance Signals via FAIR Principles and Semantic Web Technologies

**OpenPVSignal** is an ontology aiming to foster the publication of Pharmacovigilance Signal information, which is currently communicated by drug regulatory authorities via their Newsletters or Web sites as free-text reports. To this end, **OpenPVSignal** relies on *Linked Data* and *Semantic Web* technologies, and conforms to <a href="https://www.force11.org/group/fairgroup/fairprinciples" target="_blank">FAIR data principles</a>, aspiring to advance search, sharing and reuse of information about Pharmacovigilance Signals.

**OpenPVSignal** is currently under its final development phase, while a scientific paper describing its design, development and validation has been published in "Frontiers in Pharmacology" and can be found <a href="https://www.frontiersin.org/articles/10.3389/fphar.2018.00609/full" target="_blank">here</a>.

<iframe src="https://player.vimeo.com/video/98641507?title=0&byline=0&portrait=0"   
width="640" height="360" frameborder="0"></iframe>

In this repository you may find:
1. The <a href="OpenPVSignal.owl" target="_blank">OpenPVSignal ontology model</a>.
2. The OpenPVSignal <a href="https://inab-certh.github.io/OpenPVSignal/" target="_blank">web page</a>.
3. Indicative instantiations of the OpenPVSignal ontology contained in the <a href="examples" target="_blank">examples</a> folder, concerning 3 signal reports communicated via:
- The WHO Pharmaceuticals Newsletter:
  - Instantiation: <a href="examples/WHO_UMC_Pharmaceuticals_Newsletter_2017_3_Ibrutinib_and_pneumonitis.owl" target="_blank">WHO_UMC_Pharmaceuticals_Newsletter_2017_3_Ibrutinib_and_pneumonitis.owl</a>
  - Source: <a href="http://apps.who.int/iris/bitstream/10665/258799/1/WPN-2017-03-eng.pdf?ua=1" target="_blank">WHO Pharmaceuticals Newsletter, no. 3, 2017, pp. 14-19</a>
- The FDA Drug Safety Communications Web site:
  - Instantiation: <a href="examples/FDA_Drug_Safety_Communication_2_3_2011_PPIs_and_low_magnesium_levels.owl" target="_blank">FDA_Drug_Safety_Communication_2_3_2011_PPIs_and_low_magnesium_levels.owl</a)
  - Source: <a href="https://www.fda.gov/Drugs/DrugSafety/ucm245011.htm" target="_blank">FDA Drug Safety Communication: Low magnesium levels can be associated with long-term use of Proton Pump Inhibitor drugs (PPIs)</a>
- The Netherlands Pharmacovigilance Center - Lareb Web site:
  - Instantiation: <a href="examples/Lareb_2013_3_Esomeprazole_and_tinnitus.owl" target="_blank">Lareb_2013_3_Esomeprazole_and_tinnitus.owl</a>
  - Source: <a href="https://databankws.lareb.nl/Downloads/KWB_2013_3_(Es)omeprazole_and_tinnitus.pdf" target="_blank">https://databankws.lareb.nl/Downloads/KWB_2013_3_(Es)omeprazole_and_tinnitus.pdf</a>

**OpenPVSignal** is versioned following the <a href="https://semver.org/" target="_blank">semantic versioning scheme</a>, applying the guidelines provided <a href="https://github.com/dbrock/semver-howto/blob/master/README.md" target="_blank">here</a>. The last part of the version refers to the date that this version has been created. For example, version 0.8.20171211 is the version that has been first commited on GitHub, on 2017, 11th of December. Typically, each new version should be worked on a branch, following the rationale presented <a href="http://nvie.com/posts/a-successful-git-branching-model/" target="_blank">here</a>.

> For further information or guidance on how you can use **OpenPVSignal** or contribute in its further development, please contact Mr. Pantelis Natsiavas (pnatsiavas@certh.gr) and Dr. Vassilis Koutkias (vkoutkias@certh.gr).
