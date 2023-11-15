<!---<img src="https://github.com/inab-certh/OpenPVSignal/blob/master/logo.png" width="195" height="88">--->
![](./logo_small.png)

# Advancing Information Search, Sharing and Reuse on Pharmacovigilance Signals via FAIR Principles and Semantic Web Technologies

**OpenPVSignal** is an ontology aiming to foster the publication of Pharmacovigilance (PV) Signal information, which is currently communicated by drug regulatory authorities via their newsletters or web sites as free-text reports.

{% include vimeoPlayer.html id=328047797 %}

**OpenPVSignal** relies on *Linked Data* and *Semantic Web* technologies, and conforms to <a href="https://www.force11.org/group/fairgroup/fairprinciples" target="_blank">FAIR data principles</a>, aspiring to advance search, sharing and reuse of information about PV Signals.

A scientific paper describing the **OpenPVSignal** design, development and validation has been published in "Frontiers in Pharmacology" and can be found <a href="https://www.frontiersin.org/articles/10.3389/fphar.2018.00609/full" target="_blank">here</a>.

Moreover, an article about **OpenPVSignal** was published in **Uppsala Reports**, the news magazine concerning the latest issues in medicines safety released by **Uppsala Monitoring Centre**, and it can be accessed <a href="https://view.publitas.com/uppsala-monitoring-centre/uppsala-reports-80/page/20-21" target="_blank">here</a>.

Based on the OpenPVSignal ontology, **a Knowledge Graph (KG)** has been built, including 101 PV Signal reports that have been published between 2012 and 2019 by the <a href="https://who-umc.org/signal-work/signal-detection/" target="_blank">**Uppsala Monitoring Center**</a>. These datasets have been manually converted to individual KGs and have been through an iterative quality control process. One of the final stages was the validation of data schema that was performed using the SHACL Shapes Constraint Language, a language for validating RDF graphs against a set of conditions[1].

The pySHACL python library is used to run the SHACL tests and an R script is used to create the summarized reports 

```
pip install pyshacl
```

navigate to the opvsignal directory

```
Rscript run_com.r
```



In this repository you may find:
1. The <a href="OpenPVSignal.owl" target="_blank">OpenPVSignal ontology model</a>.
2. The OpenPVSignal <a href="https://inab-certh.github.io/OpenPVSignal/" target="_blank">web page</a>.
3. Indicative instantiations of the OpenPVSignal ontology contained in the <a href="examples" target="_blank">examples</a> folder, concerning 3 signal reports communicated via:
- The WHO Pharmaceuticals Newsletter:
  - Instantiation: <a href="examples/WHO_UMC_Pharmaceuticals_Newsletter_2017_3_Ibrutinib_and_pneumonitis.owl" target="_blank">WHO_UMC_Pharmaceuticals_Newsletter_2017_3_Ibrutinib_and_pneumonitis.owl</a>
  - Source: <a href="http://apps.who.int/iris/bitstream/10665/258799/1/WPN-2017-03-eng.pdf?ua=1" target="_blank">WHO Pharmaceuticals Newsletter, no. 3, 2017, pp. 14-19</a>
- The FDA Drug Safety Communications Web site:
  - Instantiation: <a href="examples/FDA_Drug_Safety_Communication_2_3_2011_PPIs_and_low_magnesium_levels.owl" target="_blank">FDA_Drug_Safety_Communication_2_3_2011_PPIs_and_low_magnesium_levels.owl</a>
  - Source: <a href="https://www.fda.gov/Drugs/DrugSafety/ucm245011.htm" target="_blank">FDA Drug Safety Communication: Low magnesium levels can be associated with long-term use of Proton Pump Inhibitor drugs (PPIs)</a>
- The Netherlands Pharmacovigilance Center - Lareb Web site:
  - Instantiation: <a href="examples/Lareb_2013_3_Esomeprazole_and_tinnitus.owl" target="_blank">Lareb_2013_3_Esomeprazole_and_tinnitus.owl</a>
  - Source: <a href="https://databankws.lareb.nl/Downloads/KWB_2013_3_(Es)omeprazole_and_tinnitus.pdf" target="_blank">https://databankws.lareb.nl/Downloads/KWB_2013_3_(Es)omeprazole_and_tinnitus.pdf</a>
4. The <a href="https://github.com/achillec/OpenPVSignal/tree/master/turtle" target="_blank">KG</a> in turtle format.
5. The <a href="https://github.com/achillec/OpenPVSignal/tree/master/TestCaseFiles" target="_blank">SHACL data models</a> used to validate the KG dataset.
4. An <a href="https://github.com/achillec/OpenPVSignal/blob/master/run_com.r" target="_blank">R based script</a> that executes the KG alidation pipeline as a whole.

**OpenPVSignal** is versioned following the <a href="https://semver.org/" target="_blank">semantic versioning scheme</a>, applying the guidelines provided <a href="https://github.com/dbrock/semver-howto/blob/master/README.md" target="_blank">here</a>. The last part of the version refers to the date that this version has been created. For example, version 0.8.20171211 is the version that has been first commited on GitHub, on 2017, 11th of December. Typically, each new version should be worked on a branch, following the rationale presented <a href="http://nvie.com/posts/a-successful-git-branching-model/" target="_blank">here</a>.

> For further information or guidance on how you can use **OpenPVSignal** or contribute in its further development, please contact Mr. Pantelis Natsiavas (pnatsiavas@certh.gr) or Mr. Achilleas Chytas (achytas@certh.gr).
> [1] Note that some of the constrained imposed by the SHACL tests still appear on the results as a violation. This can be attributed to the original data sources, i.e. for a patient appearing on an Individual Case Safety Report (ICSR) their gender and age should have been recorded but this is not the case for each and every ICSR. The SHACL tests that have been written, will mark that as a violation and it should be manually verified that the field is indeed missing on the original data.
