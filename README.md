# LEAMACHINE
Appunti per il gruppo di studio sul Machine Learning

## GRUPPO DI STUDIO
L'idea per un primo incontro (da svolgersi in Ottobre) va sotto il titolo:

**Machine Learning tramite IBM i**

che è stato motivato nel seguente modo:

*a seguito dei più recenti rilasci di Python (e R) per IBM i sembra aprirsi la strada all'uso diretto (in ambito PASE) di strumenti di machine learning: vorremmo condividere insieme lo studio di questa tematica e valutare la possibilità di strutturare un metodo di lavoro che possa servire agli associati per proporsi sul mercato con competenze nuove.*

## LINK INTERESSANTI

* [IBM i Gets An Influx Of Machine Learning Tooling](https://www.itjungle.com/2018/07/25/ibm-i-gets-an-influx-of-machine-learning-tooling/) è un editoriale pubblicato il 25 Luglio 2018 da *Alex Woodie* su *IT Jungle* in cui ci sono stralci di una intervista a *Jesse Gorzinski* (erroneamente indicato lungo tutto l'articolo come G**ro**zinski) in cui il risvolto più interessante è la menzione al primo impatto del rilascio in ambiente IBM i di Python (2015 all'interno del 5733-OPS). Alcuni clienti provarono subito ad installare i pacchetti Python dedicati al machine learning (non a caso il Machine Learning sembra essere il motivo propulsore del successo di Python degli ultimi anni) e gli sviluppatori IBM scoprirono che nessuno di essi (Numpy, Pandas, SciPy, ecc) riusciva a funzionare, neppure lontanamente.

* [Installing and configuring Python machine learning packages on IBM AIX](https://developer.ibm.com/tutorials/machine-learning-with-python-on-aix/) tutorial per AIX che può essere adottato come traccia per realizzare un percorso di installazione simile su IBM i (autori: *Sanket Rathi - Phani Kumar Ayyagari*). Viene descritta l'installazione di **Jupyter Notebook** che è lo strumento adottato nel testo *Machine Learning For Dummies*. 

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

## INSTALLAZIONE

Partiamo dalla ipotesi che abbiate già installato **yum** sul vostro sistema IBM i (gli esempi sono basati su una versione 7.3)

Vogliamo procedere all'aggiornamento dei pacchetti installati.
Lanciamo **QSH** e proviamo ad eseguire `yum update`:

```
  $                                                                
> /QOpenSys/pkgs/bin/yum update                                    
  You need to be have *ALLOBJ authority to perform this command.   
  $                                                                
```

E' evidente che è richiesto l'uso di un profilo utente autorizzato. Ripetiamo l'operazione quando siamo collegati con un profilo utente idoneo.

Se non risultano conflitti si può procedere con l'aggiornamento:

```
  $                                                                             
> /QOpenSys/pkgs/bin/yum update                                                 
  Impostazione processo di aggiornamento                                        
  Risoluzione dipendenze                                                        
  --> Esecuzione del controllo di transazione                                   
  ---> Package bash.ppc64 0:4.4-0 will be aggiornato                            
  ---> Package bash.ppc64 0:4.4-1 will be an update                             
  ---> Package libgcc_s1.ppc64 0:6.3.0-19 will be aggiornato                    
  ---> Package libgcc_s1.ppc64 0:6.3.0-24 will be an update                     
  ---> Package liblzma5.ppc64 0:5.2.3-0 will be aggiornato                      
  ---> Package liblzma5.ppc64 0:5.2.3-3 will be an update                       
  ---> Package libtool.ppc64 0:2.4.6-3 will be aggiornato                       
  ---> Package libtool.ppc64 0:2.4.6-4 will be an update                        
  --> Elaborazione dipendenza: grep-gnu per il pacchetto: libtool-2.4.6-4.ppc64 
  ---> Package libutil1.ppc64 0:0.3-0 will be aggiornato                                                                      
  ---> Package libutil1.ppc64 0:0.3-99 will be an update                                                                      
  ---> Package libz1.ppc64 0:1.2.11-1 will be aggiornato                                                                      
  ---> Package libz1.ppc64 0:1.2.11-2 will be an update                                                                       
  ---> Package nodejs10.ppc64 0:10.15.3-0 will be aggiornato                                                                  
  ---> Package nodejs10.ppc64 0:10.16.3-1 will be an update                                                                   
  ---> Package python2.ppc64 0:2.7.15-1 will be aggiornato                                                                    
  ---> Package python2.ppc64 0:2.7.16-1 will be an update                                                                     
  --> Elaborazione dipendenza: lib:/QOpenSys/pkgs/lib/libutil.so.2(shr_64.o)(ppc64) per il pacchetto: python2-2.7.16-1.ppc64  
  ---> Package python2-rpm.ppc64 0:4.13.0.1-13 will be aggiornato                                                             
  ---> Package python2-rpm.ppc64 0:4.13.0.1-17 will be an update                                                              
  ---> Package rpm.ppc64 0:4.13.0.1-13 will be aggiornato                                                                     
  ---> Package rpm.ppc64 0:4.13.0.1-17 will be an update                                                                      
  ---> Package yum.noarch 0:3.4.3-15 will be aggiornato                                                                       
  ---> Package yum.noarch 0:3.4.3-17 will be an update                                                                        
  --> Elaborazione dipendenza: python2-iniparse per il pacchetto: yum-3.4.3-17.noarch                                         
  ---> Package zlib-devel.ppc64 0:1.2.11-1 will be aggiornato                                                                 
  ---> Package zlib-devel.ppc64 0:1.2.11-2 will be an update                        
  --> Esecuzione del controllo di transazione                                       
  ---> Package grep-gnu.ppc64 0:3.0-0 will be installato                            
  ---> Package libutil2.ppc64 0:0.6.1-0 will be installato                          
  ---> Package python2-iniparse.noarch 0:0.4-1 will be installato                   
  --> Risoluzione delle dipendenze completata                                       
                                                                                    
  Dipendenze risolte                                                                
                                                                                    
  ================================================================================  
   Pacchetto                Arch           Versione             Repository   Dim.   
  ================================================================================  
  Aggiornamento:                                                                    
   bash                     ppc64          4.4-1                ibm         2.1 M   
   libgcc_s1                ppc64          6.3.0-24             ibm         197 k   
   liblzma5                 ppc64          5.2.3-3              ibm         265 k   
   libtool                  ppc64          2.4.6-4              ibm         688 k   
   libutil1                 ppc64          0.3-99               ibm          14 k    
   libz1                    ppc64          1.2.11-2             ibm          71 k    
   nodejs10                 ppc64          10.16.3-1            ibm          22 M    
   python2                  ppc64          2.7.16-1             ibm          26 M    
   python2-rpm              ppc64          4.13.0.1-17          ibm         275 k    
   rpm                      ppc64          4.13.0.1-17          ibm         2.2 M    
   yum                      noarch         3.4.3-17             ibm         1.2 M    
   zlib-devel               ppc64          1.2.11-2             ibm          38 k    
  Installazioni per dipendenze:                                                      
   grep-gnu                 ppc64          3.0-0                ibm         515 k    
   libutil2                 ppc64          0.6.1-0              ibm          16 k    
   python2-iniparse         noarch         0.4-1                ibm          28 k    
                                                                                     
  Riepilogo della transazione                                                        
  ================================================================================   
  Install       3 Packages                                                           
  Upgrade      12 Packages                                                           
  Dimensione totale del download: 55 M                                        
  Procedere [s/N]:                                                            
> s                                                                           
  Download dei pacchetti:                                                     
  (1/15): bash-4.4-1.ibmi7.1.ppc64.rpm                        | 2.1 MB  00:01 
  (2/15): grep-gnu-3.0-0.ibmi7.1.ppc64.rpm                    | 515 kB  00:00 
  (3/15): libgcc_s1-6.3.0-24.ibmi7.1.ppc64.rpm                | 197 kB  00:00 
  (4/15): liblzma5-5.2.3-3.ibmi7.1.ppc64.rpm                  | 265 kB  00:00 
  (5/15): libtool-2.4.6-4.ibmi7.1.ppc64.rpm                   | 688 kB  00:00 
  (6/15): libutil1-0.3-99.ibmi7.1.ppc64.rpm                   |  14 kB  00:00 
  (7/15): libutil2-0.6.1-0.ibmi7.1.ppc64.rpm                  |  16 kB  00:00 
  (8/15): libz1-1.2.11-2.ibmi7.1.ppc64.rpm                    |  71 kB  00:00 
  (9/15): nodejs10-10.16.3-1.ibmi7.2.ppc64.rpm                |  22 MB  00:18 
  (10/15): python2-2.7.16-1.ibmi7.1.ppc64.rpm                 |  26 MB  00:22 
  (11/15): python2-iniparse-0.4-1.ibmi7.1.noarch.rpm          |  28 kB  00:00 
  (12/15): python2-rpm-4.13.0.1-17.ibmi7.1.ppc64.rpm          | 275 kB  00:00 
  (13/15): rpm-4.13.0.1-17.ibmi7.1.ppc64.rpm                  | 2.2 MB  00:01      
  (14/15): yum-3.4.3-17.ibmi7.1.noarch.rpm                    | 1.2 MB  00:00      
  (15/15): zlib-devel-1.2.11-2.ibmi7.1.ppc64.rpm              |  38 kB  00:00      
  -------------------------------------------------------------------------------- 
  Totale                                          1.1 MB/s |  55 MB     00:48      

Running Transaction Check                                                        
Test di transazione in corso                                                     
Test di transazione eseguito con successo                                        
Transazione in corso                                                             
  Aggiornamento     : libgcc_s1-6.3.0-24.ppc64                             1/27  
  Aggiornamento     : libz1-1.2.11-2.ppc64                                 2/27  
  Installazione     : libutil2-0.6.1-0.ppc64                               3/27  
  Aggiornamento     : python2-2.7.16-1.ppc64                               4/27  
  Aggiornamento     : bash-4.4-1.ppc64                                     5/27  
  Installazione     : python2-iniparse-0.4-1.noarch                        6/27  
  Aggiornamento     : liblzma5-5.2.3-3.ppc64                               7/27  
  Aggiornamento     : rpm-4.13.0.1-17.ppc64                                8/27  
  Aggiornamento     : python2-rpm-4.13.0.1-17.ppc64                        9/27
  Installazione     : grep-gnu-3.0-0.ppc64                                10/27
  Aggiornamento     : libtool-2.4.6-4.ppc64                               11/27
  Aggiornamento     : yum-3.4.3-17.noarch                                 12/27
  Aggiornamento     : nodejs10-10.16.3-1.ppc64                            13/27
  Aggiornamento     : zlib-devel-1.2.11-2.ppc64                           14/27
  Aggiornamento     : libutil1-0.3-99.ppc64                               15/27
  Pulizia           : nodejs10-10.15.3-0.ppc64                            16/27
  Pulizia           : yum-3.4.3-15.noarch                                 17/27
  Pulizia           : python2-rpm-4.13.0.1-13.ppc64                       18/27
  Pulizia           : rpm-4.13.0.1-13.ppc64                               19/27
  Pulizia           : liblzma5-5.2.3-0.ppc64                              20/27
  Pulizia           : python2-2.7.15-1.ppc64                              21/27
  Pulizia           : libutil1-0.3-0.ppc64                                22/27
  Pulizia           : zlib-devel-1.2.11-1.ppc64                           23/27
  Pulizia           : libz1-1.2.11-1.ppc64                                24/27
  Pulizia           : libtool-2.4.6-3.ppc64                               25/27
  Pulizia           : libgcc_s1-6.3.0-19.ppc64                            26/27   
  Pulizia           : bash-4.4-0.ppc64                                    27/27   
                                                                                  
  Dipendenza installata:                                                            
    grep-gnu.ppc64 0:3.0-0                     libutil2.ppc64 0:0.6.1-0             
    python2-iniparse.noarch 0:0.4-1                                                 
                                                                                  
  Aggiornato:                                                                       
    bash.ppc64 0:4.4-1                       libgcc_s1.ppc64 0:6.3.0-24             
    liblzma5.ppc64 0:5.2.3-3                 libtool.ppc64 0:2.4.6-4                
    libutil1.ppc64 0:0.3-99                  libz1.ppc64 0:1.2.11-2                 
    nodejs10.ppc64 0:10.16.3-1               python2.ppc64 0:2.7.16-1               
    python2-rpm.ppc64 0:4.13.0.1-17          rpm.ppc64 0:4.13.0.1-17                
    yum.noarch 0:3.4.3-17                    zlib-devel.ppc64 0:1.2.11-2            
                                                                                  
  Completo!                                                                         
  $                                                                                 
```

In ogni momento possiamo filtrare l'archivio dei pacchetti PASE installati; ecco due dei pacchetti menzionati in precedenza:

```
  $                                                                   
> /QOpenSys/pkgs/bin/yum list | grep scikit                           
  python3-scikit-learn.ppc64            0.19.1-6                 ibm  
  $                                                                   
> /QOpenSys/pkgs/bin/yum list | grep pandas                           
  python3-pandas.ppc64                  0.22.0-4                 ibm  
  $                                                                   
```

Ora se confrontiamo le versioni utilizzate in uno dei testi citati (vedi *Machine Learning con Python* a pagina 13) potremmo trovare ad esempio pandas 0.15.2: ci accorgiamo subito di come facilmente possano intercorrere cambiamenti che possono crearci qualche difficoltà (almeno agli inizi).

Il comando per installare nuovi pacchetti è `/QOpenSys/pkgs/bin/yum install` seguito dal nome del pacchetto che si vuole installare. Il valore di yum è -principalmente- quello di garantire che le dipendenze che caratterizzano il pacchetto siano rispettate (e quindi installate se mancanti).

Come è noto impostando `export PATH=/QOpenSys/pkgs/bin:$PATH` si può successivamente omettere il percorso ove risiedono i comandi e lanciare direttamente `yum` o `python3`. 

In molti esempi su internet si fa riferimento alla libreria **matplotlib** che purtroppo non è disponibile...                                       

```
  $                                         
> yum install matplotlib                    
  Impostazione processo di installazione    
  Nessun pacchetto matplotlib disponibile.  
  Errore: Niente da fare                    
```

## HANDS ON

Proviamo ad utilizzare alcuni pacchetti per testare il nostro ambiente.

* [scikit-learn](hands_on/scikit-learn.md)





