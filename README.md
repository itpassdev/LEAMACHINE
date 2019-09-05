# LEAMACHINE
Appunti per il gruppo di studio sul Machine Learning

## GRUPPO DI STUDIO
L'idea per un primo incontro (da svolgersi in Ottobre) va sotto il titolo:

**Machine Learning tramite IBM i**

che è stato motivato nel seguente modo:

*a seguito dei più recenti rilasci di Python (e R) per IBM i sembra aprirsi la strada all'uso diretto (in ambito PASE) di strumenti di machine learning: vorremmo condividere insieme lo studio di questa tematica e valutare la possibilità di strutturare un metodo di lavoro che possa servire agli associati per proporsi sul mercato con competenze nuove.*

## LINK INTERESSANTI

* [IBM i Gets An Influx Of Machine Learning Tooling](https://www.itjungle.com/2018/07/25/ibm-i-gets-an-influx-of-machine-learning-tooling/) è un editoriale pubblicato il 25 Luglio 2018 da *Alex Woodie* su *IT Jungle* in cui ci sono stralci di una intervista a *Jesse Gorzinski* (erroneamente indicato lungo tutto l'articolo come G**ro**zinski) in cui il risvolto più interessante è la menzione al primo impatto del rilascio in ambiente IBM i di Python (2015 all'interno del 5733-OPS). Alcuni clienti provarono subito ad installare i pacchetti Python dedicati al machine learning (non a caso il Machine Learning sembra essere il motivo propulsore del successo di Python degli ultimi anni) e gli sviluppatori IBM scoprirono che nessuno di essi (Numpy, Pandas, SciPy, ecc) riusciva a funzionare, neppure lontanamente.

* [Dispense del Corso sul Machine Learning del Prof. Davide Maltoni](http://bias.csr.unibo.it/maltoni/ml/) dell'Università di Bologna -segnalate da Federico-

* [MATLAB per il Machine Learning](https://it.mathworks.com/solutions/machine-learning.html) materiale -segnalato da Enzo- focalizzato su MATLAB e quindi relativo ad un ambiente integrato ad un prodotto SW non Open Source: tra i punti di forza si enfatizza la *esecuzione più rapida rispetto all’open source sulla maggior parte dei calcoli statistici e di machine learning*

## TESTI INTERESSANTI
Elenco qui di seguito alcuni testi che nel corso degli anni ho acquistato per approfondire l'argomento: li elenco procedendo dal generale al particolare.

* **INTELLIGENZA ARTIFICIALE** *Stuart Russell - Peter Norvig* <br/> Testo generale che abbraccia tutto il campo della Intelligenza Artificiale (il Machine Learning è trattato nel secondo volume)
* **Foundations of Machine Learning** *Mehryar Mohri, Afshin Rostamizadeh, Ameet Talwalkar* <br/> Testo universitario della *MIT Press* per approfondire i riferimenti alla logica e alla matematica su cui il Machine Learning si basa... non sono andato oltre alla introduzione!
* **Big Data Analytics** *Andrea De Mauro* <br/> testo più pratico -pubblicato da APOGEO- che gravita attorno all'uso di **KNIME** come piattaforma analitica per Data Science e Machine Learning con gran parte dei tools offerti gratuitamente con licenza Open Source
* **Machine Learning con Python** *Sebastian Raschka* <br/> è anch'esso un testo pratico -pubblicato da APOGEO nel 2016- che si focalizza su librerie **Python** (utilizza *NumPy*, *SciPy*, *scikit-learn*, *matplotlib* e *pandas*)
* **Machine Learning For Dummies** *John Mueller - Luca Massaron* <br/>
è un testo più recente (2019) che traduce l'originale inglese del 2016 -*Wiley*- ed è pubblicato in Italia da *Hoepli*. Il vantaggio è che essendo uno dei coautori italiano, il testo è stato completamente rivisitato nella parte pratica per concludere la migrazione da Python2 e Python3 che non era ancora completa nel 2016. Il testo introduce all'uso di **Python** e **R**.

Poiché la idea del gruppo di lavoro ITPASS è volta a valorizzare il porting che IBM ha effettuato di Python ed R in ambito **PASE** ritengo che gli ultimi due testi potranno essere decisamente interessanti. 

Il primo obiettivo di questo repository sarà documentare i passi per installare **Python3** ed **R** in ambito PASE secondo un approccio operativo: il repository potrà essere installato su IBM i automatizzando i passi necessari (il che dovrebbe semplificarci la vita...).