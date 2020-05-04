<div class="section">
    <div>
    	<iframe id="splash" width="960" height="480" src="banners/splash.html"></iframe>
        <div style="top: 70px;font-size: 75px;font-weight: bold;">
        	Wie geht es weiter?
       	</div>
		<div style="font-weight: 500;top: 140px;left: 10px;font-size: 29px;">
			Zukunftsszenarien von COVID-19, erklärt mit spielbaren Simulationen
		</div>
		<div style="font-weight: 100;top: 189px;left: 10px;font-size: 19px;line-height: 21px;">
			<b>
				🕐 Lese-/Spielzeit: 30 Min.
				&nbsp;&middot;&nbsp;
			</b>
			von
			<a href="https://scholar.google.com/citations?user=_wHMGkUAAAAJ&amp;hl=en">Marcel Salathé</a>
			(Epidemiologe)
			&
			<a href="https://ncase.me/">Nicky Case</a>
			(Kunst/Code)
		</div>
	</div>
</div>

"Das Einzige, was man fürchten muss, ist die Angst selbst", war ein dummer Ratschlag.

Sicher, hortest Du kein Toilettenpapier - aber wenn Politiker die Angst selbst fürchten, werden sie echte Gefahren herunterspielen, um eine "Massenpanik" zu vermeiden. Die Angst ist nicht das Problem, sondern die Art und Weise, wie wir unsere Angst kanalisieren. Angst gibt uns Energie, um jetzt diese Gefahren anzugehen und uns später auf diese vorzubereiten.

Wir (Marcel, Epidemiologe + Nicky, Kunst / Code) sind ehrlich gesagt auch besorgt. Und wir wetten, dass Du es auch bist! Deshalb haben wir unsere Angst dazu genutzt, um diese **interaktive Simulationen** zu erstellen. Unser Ziel ist, dass Du nicht in Panik verharrst, sondern versuchst zu verstehen und zu lernen:

* **Über die letzten paar Monate** (Epidemiologie 101, SEIR-Modell, R & R0)
* **Über die nächsten paar Monate** (Sperren, Kontaktverfolgung, Masken)
* **Über die nächsten paar Jahre** (Verlust der Immunität? Kein Impfstoff?)

Diese interaktive Simulation (veröffentlicht am 1. Mai 2020. Siehe Fußnote!→[^timestamp]) soll Dir zugleich Hoffnung geben und Angst machen. Denn um COVID-19 auf eine Weise zu schlagen, die auch **unsere geistige Gesundheit und unsere finanzielle Situation schützt**, brauchen wir zum einen Optimismus, um Pläne zu machen, und zum anderen Pessimismus, um Backup-Pläne zu erstellen. Wie Gladys Bronwyn Stern einmal sagte: *"Der Optimist erfindet das Flugzeug und der Pessimist den Fallschirm."*

[^timestamp]: Die Fußnoten in dieser Simulation enthalten Quellen, Links oder zusätzliche ommentare. Wie dieser erste Kommentar!

    **Dieser Führer wurde am 1. Mai 2020 publiziert.</strong> Viele Details werden obsolet werden, aber wir sind zuversichtlich, dass dieser Führer 95% aller möglichen zukünftigen Szenarien abdeckt, und dass das 1x1 der Epidemoloie 101 ohne Verfallsdatum nützlich bleiben wird.

So, buckle in: we're about to experience some turbulence.

<div class="section chapter">
    <div>
		<img src="banners/curve.png" height=480 style="position: absolute;"/>
        <div>The Last Few Months</div>
    </div>
</div>

Pilots use flight simulators to learn how not to crash planes.

**Epidemiologists use epidemic simulators to learn how not to crash humanity.**

So, let's make a very, *very* simple "epidemic flight simulator"! In this simulation, <icon i></icon> Infectious people can turn <icon s></icon> Susceptible people into more <icon i></icon> Infectious people:

![](pics/spread.png)

It's estimated that, *at the start* of a COVID-19 outbreak, the virus jumps from an <icon i></icon> to an <icon s></icon> every 4 days, *on average*.[^serial_interval] (remember, there's a lot of variation)

[^serial_interval]: "Das mittlere \[serielle\] Interval war 3.96 Tage (95% CI 3.53–4.39 Tage)" (“The mean [serial] interval was 3.96 days (95% CI 3.53–4.39 days)”) [Du Z, Xu X, Wu Y, Wang L, Cowling BJ, Ancel Meyers L](https://wwwnc.cdc.gov/eid/article/26/6/20-0357_article) (Hinweis: "Frühveröffentlichungen" können nicht als endgültige Version von Artikeln angesehen werden)

If we simulate "double every 4 days" *and nothing else*, on a population starting with just 0.001% <icon i></icon>, what happens? 

**Click "Start" to play the simulation! You can re-play it later with different settings:** (technical caveats: [^caveats])

[^caveats]: **Remember: all these simulations are super simplified, for educational purposes.**
    
    One simplification: When you tell this simulation "Infect 1 new person every X days", it's actually increasing # of infected by 1/X each day. Same for future settings in these simulations – "Recover every X days" is actually reducing # of infected by 1/X each day.
    
    Those *aren't* exactly the same, but it's close enough, and for educational purposes it's less opaque than setting the transmission/recovery rates directly.

<div class="sim">
		<iframe src="sim?stage=epi-1" width="800" height="540"></iframe>
</div>

This is the **exponential growth curve.** Starts small, then explodes. "Oh it's just a flu" to "Oh right, flus don't create *mass graves in rich cities*". 

![](pics/exponential.png)

But, this simulation is wrong. Exponential growth, thankfully, can't go on forever. One thing that stops a virus from spreading is if others *already* have the virus:

![](pics/susceptibles.png)

The more <icon i></icon>s there are, the faster <icon s></icon>s become <icon i></icon>s, **but the fewer <icon s></icon>s there are, the *slower* <icon s></icon>s become <icon i></icon>s.**

How's this change the growth of an epidemic? Let's find out:

<div class="sim">
		<iframe src="sim?stage=epi-2" width="800" height="540"></iframe>
</div>

This is the "S-shaped" **logistic growth curve.** Starts small, explodes, then slows down again.

But, this simulation is *still* wrong. We're missing the fact that <icon i></icon> Infectious people eventually stop being infectious, either by 1) recovering, 2) "recovering" with lung damage, or 3) dying.

For simplicity's sake, let's pretend that all <icon i></icon> Infectious people become <icon r></icon> Recovered. (Just remember that in reality, some are dead.) <icon r></icon>s can't be infected again, and let's pretend – *for now!* – that they stay immune for life.

With COVID-19, it's estimated you're <icon i></icon> Infectious for 10 days, *on average*.[^infectiousness] That means some folks will recover before 10 days, some after. **Here's what that looks like, with a simulation *starting* with 100% <icon i></icon>:**

[^infectiousness]: “Der Median der Zeitspanne in welcher Infizierte ansteckend waren \[...\] war 9.5 Tage.” (“The median communicable period \[...\] was 9.5 days.”) [Hu, Z., Song, C., Xu, C. et al](https://link.springer.com/article/10.1007/s11427-020-1661-4) Ja, wir wissen, dass "Median" und "Mittwelwert" nicht das Gleiche sind. Für didaktische Zwecke sind sie aber genügend ähnlich.

<div class="sim">
		<iframe src="sim?stage=epi-3" width="800" height="540"></iframe>
</div>

This is the opposite of exponential growth, the **exponential decay curve.**

Now, what happens if you simulate S-shaped logistic growth *with* recovery?

![](pics/graphs_q.png)

Let's find out.

<b style='color:#ff4040'>Red curve</b> is *current* cases <icon i></icon>,    
<b style='color:#999999'>Gray curve</b> is *total* cases (current + recovered <icon r></icon>),
starts at just 0.001% <icon i></icon>:

<div class="sim">
		<iframe src="sim?stage=epi-4" width="800" height="540"></iframe>
</div>

And *that's* where that famous curve comes from! It's not a bell curve, it's not even a "log-normal" curve. It has no name. But you've seen it a zillion times, and beseeched to flatten.

This is the the **SIR Model**,[^sir]    
(<icon s></icon>**S**usceptible <icon i></icon>**I**nfectious <icon r></icon>**R**ecovered)      
the *second*-most important idea in Epidemiology 101:

[^sir]: For more technical explanations of the SIR Model, see [the Institute for Disease Modeling](https://www.idmod.org/docs/hiv/model-sir.html#) and [Wikipedia](https://en.wikipedia.org/wiki/Compartmental_models_in_epidemiology#The_SIR_model)

![](pics/sir.png)

**NOTE: The simulations that inform policy are way, *way* more sophisticated than this!** But the SIR Model can still explain the same general findings, even if missing the nuances.

Actually, let's add one more nuance: before an <icon s></icon> becomes an <icon i></icon>, they first become <icon e></icon> Exposed. This is when they have the virus but can't pass it on yet – infect*ed* but not yet infect*ious*.

![](pics/seir.png)

(This variant is called the **SEIR Model**[^seir], where the "E" stands for <icon e></icon> "Exposed". Note this *isn't* the everyday meaning of "exposed", when you may or may not have the virus. In this technical definition, "Exposed" means you definitely have it. Science terminology is bad.)

[^seir]: For more technical explanations of the SEIR Model, see [the Institute for Disease Modeling](https://www.idmod.org/docs/hiv/model-seir.html) and [Wikipedia](https://en.wikipedia.org/wiki/Compartmental_models_in_epidemiology#The_SEIR_model)

For COVID-19, it's estimated that you're <icon e></icon> infected-but-not-yet-infectious for 3 days, *on average*.[^latent] What happens if we add that to the simulation?

[^latent]: “Ausgehend von einer Verteilung der Inkubationszeitspanne  von im Mittel über 5.2 Tagen aus einer anderen Studie über frühe COVID-19 Fälle schlossen wir, dass die Ansteckungsfähigkeit 2.3 Tage (95% CI, 0.8–3.0 Tage) vor dem Auftreten von Symptomen auftrat.” Übersetzung: Angenommen die Symptome fangen am 5 Tag an, dann fängt die Ansteckungsfähigkeit 2 Tage davor an (also am 3. Tag). (“Assuming an incubation period distribution of mean 5.2 days from a separate study of early COVID-19 cases, we inferred that infectiousness started from 2.3 days (95% CI, 0.8–3.0 days) before symptom onset”) [He, X., Lau, E.H.Y., Wu, P. et al.](https://www.nature.com/articles/s41591-020-0869-5)

<b style='color:#ff4040'>Red <b style='color:#FF9393'>+ Pink</b> curve</b> is *current* cases (infectious <icon i></icon> + exposed <icon e></icon>),    
<b style='color:#888'>Gray curve</b> is *total* cases (current + recovered <icon r></icon>):

<div class="sim">
		<iframe src="sim?stage=epi-5" width="800" height="540"></iframe>
</div>

Not much changes! How long you stay <icon e></icon> Exposed changes the ratio of <icon e></icon>-to-<icon i></icon>, and *when* current cases peak... but the *height* of that peak, and total cases in the end, stays the same.

Why's that? Because of the *first*-most important idea in Epidemiology 101:

![](pics/r.png)

Short for "Reproduction number". It's the *average* number of people an <icon i></icon> infects *before* they recover (or die).

![](pics/r2.png)

**R** changes over the course of an outbreak, as we get more immunity & interventions.

**R<sub>0</sub>** (pronounced R-nought) is what R is *at the start of an outbreak, before immunity or interventions*. R<sub>0</sub> more closely reflects the power of the virus itself, but it still changes from place to place. For example, R<sub>0</sub> is higher in dense cities than sparse rural areas.

(Die meisten Zeitungsartikel - und teilweise auch wissenschaftliche Veröffentlichungen verwechseln R und R<sub>0</sub>. Wiederum - wissenschaftliche Terminologie ist übel.)

The R<sub>0</sub> for "the" seasonal flu is around 1.28[^r0_flu]. This means, at the *start* of a flu outbreak, each <icon i></icon> infects 1.28 others *on average.* (If it sounds weird that this isn't a whole number, remember that the "average" mom has 2.4 children. This doesn't mean there's half-children running about.)

[^r0_flu]: “The median R value for seasonal influenza was 1.28 (IQR: 1.19–1.37)” [Biggerstaff, M., Cauchemez, S., Reed, C. et al.](https://bmcinfectdis.biomedcentral.com/articles/10.1186/1471-2334-14-480)

The R<sub>0</sub> for COVID-19 is estimated to be around 2.2,[^r0_covid] though one *not-yet-finalized* study estimates it was 5.7(!) in Wuhan.[^r0_wuhan]

[^r0_covid]: “We estimated the basic reproduction number R0 of 2019-nCoV to be around 2.2 (90% high density interval: 1.4–3.8)” [Riou J, Althaus CL.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7001239/)

[^r0_wuhan]: “we calculated a median R0 value of 5.7 (95% CI 3.8–8.9)” [Sanche S, Lin YT, Xu C, Romero-Severson E, Hengartner N, Ke R.](https://wwwnc.cdc.gov/eid/article/26/7/20-0282_article)

In our simulations – *at the start & on average* – an <icon i></icon> infects someone every 4 days, over 10 days. "4 days" goes into "10 days" two-and-a-half times. This means – *at the start & on average* – each <icon i></icon> infects 2.5 others. Therefore, R<sub>0</sub> = 2.5. (caveats:[^r0_caveats_sim])

[^r0_caveats_sim]: This is pretending that you're equally infectious all throughout your "infectious period". Again, simplifications for educational purposes.

**Play with this R<sub>0</sub> calculator, to see how R<sub>0</sub> depends on recovery time & new-infection time:**

<div class="sim">
		<iframe src="sim?stage=epi-6a&format=calc" width="285" height="255"></iframe>
</div>

But remember, the fewer <icon s></icon>s there are, the *slower* <icon s></icon>s become <icon i></icon>s. The *current* reproduction number (R) depends not just on the *basic* reproduction number (R<sub>0</sub>), but *also* on how many people are no longer <icon s></icon> Susceptible. (For example, by recovering & getting natural immunity.)

<div class="sim">
		<iframe src="sim?stage=epi-6b&format=calc" width="285" height="390"></iframe>
</div>

When enough people have immunity, R < 1, and the virus is contained! This is called **herd immunity**. For flus, herd immunity is achieved *with a vaccine*. Trying to achieve "natural herd immunity" by letting folks get infected is a *terrible* idea. (But not for the reason you may think! We'll explain later.)

Now, let's play the SEIR Model again, but showing R<sub>0</sub>, R over time, and the herd immunity threshold:

<div class="sim">
		<iframe src="sim?stage=epi-7" width="800" height="540"></iframe>
</div>

**NOTE: Total cases *does not stop* at herd immunity, but overshoots it!** And it crosses the threshold *exactly* when current cases peak. (This happens no matter how you change the settings – try it for yourself!)

This is because when there are more non-<icon s></icon>s than the herd immunity threshold, you get R < 1. And when R < 1, new cases stop growing: a peak.

**If there's only one lesson you take away from this guide, here it is** – it's an extremely complex diagram so please take time to fully absorb it:

![](pics/r3.png)

**This means: we do NOT need to catch all transmissions, or even nearly all transmissions, to stop COVID-19!**

It's a paradox. COVID-19 is extremely contagious, yet to contain it, we "only" need to stop more than 60% of infections. 60%?! If that was a school grade, that's a D-. But if R<sub>0</sub> = 2.5, cutting that by 61% gives us R = 0.975, which is R < 1, virus is contained! (exact formula:[^exact_formula])

[^exact_formula]: Remember R = R<sub>0</sub> * the ratio of transmissions still allowed. Remember also that ratio of transmissions allowed = 1 - ratio of transmissions *stopped*.
    
    Therefore, to get R < 1, you need to get R<sub>0</sub> * TransmissionsAllowed < 1. 
    
    Therefore, TransmissionsAllowed < 1/R<sub>0</sub>
    
    Therefore, 1 - TransmissionsStopped < 1/R<sub>0</sub>
    
    Therefore, TransmissionsStopped > 1 - 1/R<sub>0</sub>
    
    Therefore, you need to stop more than **1 - 1/R<sub>0</sub>** of transmissions to get R < 1 and contain the virus!

![](pics/r4.png)

(If you think R<sub>0</sub> or the other numbers in our simulations are too low/high, that's good you're challenging our assumptions! There'll be a "Sandbox Mode" at the end of this guide, where you can plug in your *own* numbers, and simulate what happens.)

*Every* COVID-19 intervention you've heard of – handwashing, social/physical distancing, lockdowns, self-isolation, contact tracing & quarantining, face masks, even "herd immunity" – they're *all* doing the same thing:

Getting R < 1.

So now, let's use our "epidemic flight simulator" to figure this out: How can we get R < 1 in a way **that also protects our mental health *and* financial health?**

Brace yourselves for an emergency landing...

<div class="section chapter">
    <div>
		<img src="banners/curve.png" height=480 style="position: absolute;"/>
        <div>Die nächsten paar Monate</div>
    </div>
</div>

... hätten deutlich schlimmer sein können. Hier ist ein Paralleluniversum, das wir vermieden haben:

###Szenario 0: Überhaupt nichts tun

Etwa 1 von 20 Menschen, die sich COVID-19 infiziert haben, benötigen intensivmedizinische Behandlung.[^icu_covid] In einem reichen Land wie den USA kommt ein Intensivplatz auf 3.400 Menschen.[^icu_us] Daher können die USA damit umgehen, dass 20 von 3400 Menschen *gleichzeitig* infiziert sind - oder 0,6% der Bevölkerung.

[^icu_covid]: [Prozentualer Anteil der COVID-19-Fälle in den USA vom 12. Februar bis 16. März 2020, die eine intensivmedizinische Behandlung benötigten, nach Altersgruppe](https://www.statista.com/statistics/1105420/covid-icu-admission-rates-us-by-age-group/). Zwischen 4,9% und 11,5% *aller* COVID-19-Fälle benötigten eine intensivmedizinische Behandlung. Wenn man die unterste Schätzung wählt, sind das 5 Prozent oder 1 von 20. Diese Gesamtzahl ist spezifisch für die Altersstruktur der USA. In Ländern mit älterer Bevölkerung wird sie höher und in Ländern mit jüngerer Bevölkerung niedriger sein.

[^icu_us]: Anzahl der Betten auf der Intensivstation = 96.596. Von [der Gesellschaft für Intensivmedizin] (https://sccm.org/Blog/March-2020/United-States-Resource-Availability-for-COVID-19) Die Bevölkerung der USA betrug im Jahr 2019 rund 328.200.000 Personen. 96.596 von 328.200.000 macht ungefähr 1 von 3400. 

Selbst wenn wir diese Kapazität auf 2% *mehr als verdreifacht* hätten, wäre Folgendes passiert, *wenn wir absolut nichts getan hätten:*

<div class="sim">
		<iframe src="sim?stage=int-1&format=lines" width="800" height="540"></iframe>
</div>

Gar nicht gut.

Eben das hat [der Bericht des Imperial College vom 16. März] (http://www.imperial.ac.uk/mrc-global-infectious-disease-analysis/covid-19/report-9-impact-of-npis-on-covid-19/) herausgefunden: Wenn wir nichts tun, gehen uns die Betten auf den Intensivstationen aus und mehr als 80% der Bevölkerung werden infiziert. 
(zur Erinnerung: die Gesamtzahl der Fälle *überschreitet* die Herdenimmunität)

Selbst wenn nur 0,5% der Infizierten sterben - eine sehr optimistische Annahme, wenn es keine Betten auf Intensivstationen mehr gibt - dann sterben in einem großen Land wie den USA mit 300 Millionen Menschen 0,5% von 80% der 300 Millionen. Also immer noch 1,2 Millionen Menschen ... *FALLS wir nichts tun*.

(In vielen Nachrichten und sozialen Medien wurde berichtet: "80% werden infiziert" *ohne* den Beisatz "FALLS WIR NICHTS TUN". Die Angst kanalisierte sich auf diese Weise in Klicks, nicht in Verständnis. *Seufz.*)

###Szenario 1: "Flatten the Curve" / Herdenimmunität

Der Plan "Flatten The Curve" (Abflachen der Kurve) wurde von allen Gesundheitsorganisation angepriesen, während der ursprüngliche britische Plan der "Herdenimmunität" allgemein ausgepfiffen wurde. Allerdings handelte es sich dabei eigentlich um *denselben Plan.* Großbritannien kommunizierte ihn nur schlecht.[^yong]

(^yong): Übersetztes Zitat: Er sagt, dass das eigentliche Ziel dasselbe ist wie in anderen Ländern: die Kurve abflachen, indem der Ausbruch von Infektionen zeitlich versetzt wird. Als Folge davon kann die Nation Herdenimmunität erreichen; das ist ein Nebeneffekt, kein Ziel. [...] Der aktuelle Coronavirus-Aktionsplan der Regierung, der online verfügbar ist, erwähnt die Herdenimmunität überhaupt nicht. (Aus einem [The Atlantic-Artikel von Ed Yong](https://www.theatlantic.com/health/archive/2020/03/coronavirus-pandemic-herd-immunity-uk-boris-johnson/608065/))

Beide Pläne hatten jedoch einen fatalen Fehler.

Betrachten wir zunächst die beiden Hauptmöglichkeiten, mit denen sich die Kurve abflachen lässt: Händewaschen und soziale Distanzierung.

Durch vermehrtes Händewaschen werden Grippen und Erkältungskrankeiten in Ländern mit hohem Einkommen um ~25%[^handwashing] reduziert, während die stadtweite Abriegelung in London enge Kontakte um ~70%[^london] einschränkt. Nehmen wir also an, durch Händewaschen kann R um *bis zu* 25% reduziert werden, und durch Distanzierung kann R um *bis zu* 70% reduziert werden:

[^handwashing]: Alle acht in Frage kommenden Studien berichteten, dass das Händewaschen das Risiko einer Atemwegsinfektion senkt, wobei die Risikominderung zwischen 6% und 44% liegt. Gepoolter Wert 24% (95% CI 6-40%). (Der Einfachheit halber haben wir in diesen Simulationen den gepoolten Wert auf 25% aufgerundet.) [Rabie, T. und Curtis, V.](https://onlinelibrary.wiley.com/doi/full/10.1111/j.1365-3156.2006.01568.x) Anmerkung: Wie diese Meta-Analyse aufzeigt, ist die Qualität der Studien zum Händewaschen (zumindest in Ländern mit hohem Einkommen) miserabel.

[^london]: Wir fanden eine 73%ige Verringerung der durchschnittlichen täglichen Anzahl der beobachteten Kontakte pro Teilnehmer. Dies würde ausreichen, um R0 von einem Wert von 2,6 vor dem Lockdown auf 0,62 (0,37 - 0,89) während des Lockdowns zu reduzieren. (Der Einfachheit halber haben wir in diesen Simulationen auf 70% abgerundet.) [Jarvis und Zandvoort et al](https://cmmid.github.io/topics/covid19/comix-impact-of-physical-distance-measures-on-transmission-in-the-UK.html)

**Probiere mit diesem Rechner aus, um mit unterschiedlichen % von Nicht-<icon s></icon> zu sehen, wie Händewaschen und Distanzierung R reduzieren:** (dieser Rechner visualisiert ihre *relativen* Effekte, weshalb die Erhöhung des einen Merkmals so *aussieht*, als ob es die Wirkung des anderen verringert.[^log_caveat])

[^log_caveat]: Diese Verzerrung würde verschwinden, wenn wir R auf einer logarithmischen Skala auftragen würden... aber dann müssten wir *logarithmische Skalen.* erklären

<div class="sim">
		<iframe src="sim?stage=int-2a&format=calc" width="285" height="260"></iframe>
</div>

Lasst uns nun simulieren, was mit einer COVID-19-Epidemie passiert, wenn wir ab März 2020 das Händewaschen verstärkt hätten, aber nur mit *wenig* sozialer Distanzierung - sodass R niedriger, aber immer noch größer als 1 ist:

<div class="sim">
		<iframe src="sim?stage=int-2&format=lines" width="800" height="540"></iframe>
</div>

Drei Anmerkungen:

1. Dies *verringert* die Gesamtzahl der Fälle! **Selbst wenn R < 1 nicht erreicht wird, rettet die Reduzierung von R immer noch Leben, indem sie den 'Überhang' bis zur Herdenimmunität reduziert.** Viele Menschen denken, dass mit dem Abflachen der Kurve die Fälle zeitlich gestreckt werden, ohne aber die Gesamtzahl zu reduzieren. Doch das steht im Widerspruch zu *jedem* grundlegenden Epidemiologie-Modell. Aber weil in den Nachrichten "80%+ werden infiziert sein" als unvermeidlich berichtet wurde, kommt es zu der weitläufigen Annahme, dass die Gesamtzahl der Fälle in jedem Fall gleich bleiben würde. *Seufz.*

2. Aufgrund der zusätzlichen Interventionen erreichen die aktuellen Fälle ihren Höhepunkt *bevor* die Herdenimmunität erreicht wird. Tatsächlich schießt in dieser Simulation die Gesamtzahl der Fälle nur *ein kleines bisschen* über die Herdenimmunität hinaus - der Plan des Vereinigten Königreichs! An diesem Punkt, R < 1, kann man alle anderen Interventionen loslassen, und COVID-19 bleibt eingedämmt! Es gibt nur ein Problem ...

3. Es fehlen die Betten auf den Intensivstationen. Und das über mehrere Monate. (und dabei haben wir die Betten auf den Intensivstationen für diese Simulation *bereits* verdreifacht)

Das führte zum Befund im Bericht des Imperial College vom 16. März, der Großbritannien davon überzeugte, seinen ursprünglichen Plan aufzugeben. Jeder Versuch einer **Milderung** (R reduzieren, aber R > 1) wird scheitern. Der einzige Ausweg ist **Unterdrückung** (R reduzieren, so dass R < 1).
![](pics/mitigation_vs_suppression.png)

Das heißt: Es reicht nicht, die Kurve einfach "abzuflachen". Die Kurve muss *zerstampft* werden. Zum Beispiel mit ...

###Szenario 2: Monatelanger Lockdown

Mal sehen, was passiert, wenn wir die Kurve mit einen 5-monatigen Lockdown *zerstampfen*, die <icon i></icon> auf fast gar nichts reduzieren und dann endlich – *endlich* – wieder zu unserem normalen Leben zurückkehren:

<div class="sim">
		<iframe src="sim?stage=int-3&format=lines" width="800" height="540"></iframe>
</div>

Oh.

Das ist die "zweite Welle", über die alle sprechen. Sobald wir den Lockdown aufheben, erhalten wir wieder R > 1. Ein einzelner, verbliebener <icon i></icon> (oder ein importierter <icon i></icon>) kann also einen Ausschlag verursachen, der fast so schlimm ist, als hätten wir Szenario 0 verfolgt: Absolut nichts getan.

**Ein Lockdown ist keine Heilung, es ist nur ein Neustart.**

Was also tun? Einen Lockdown nach dem anderen?

###Szenario 3: Periodischer Lockdown

Diese Option wurde zuerst im Bericht des Imperial College vom 16. März und später erneut in einem Harvard-Papier vorgeschlagen [^lockdown_harvard].

[^lockdown_harvard]: In Abwesenheit anderer Interventionen ist eine Schlüsselmetrik für den Erfolg der sozialen Distanzierung, ob die Kapazitäten der Intensivpflege überschritten werden. Um dies zu vermeiden, kann eine längere oder zeitweilige soziale Distanzierung bis ins Jahr 2022 erforderlich sein. [Kissler und Tedijanto et al] (https://science.sciencemag.org/content/early/2020/04/14/science.abb5793)

**Hier ist eine Simulation für diese Option:** (Spiele zunächst die Aufzeichnung ab. Danach kannst Du versuchen, Deinen *eigenen* Lockdown-Plan zu simulieren, indem Du den Schieberegler änderst ** während* die Simulation läuft! Du kannst dabei die Simulation unterbrechen, fortsetzen und die Simulationsgeschwindigkeit ändern)

<div class="sim">
		<iframe src="sim?stage=int-4&format=lines" width="800" height="540"></iframe>
</div>

Dies *würde* Fälle unter der Kapazität der Intensivstationen halten! Und es ist *viel* besser als ein 18-monatiger Lockdown, bis ein Impfstoff zur Verfügung steht. Wir müssten also nur... für ein paar Monate einen Lockdown machen, für ein paar Monate öffnen und das solange wiederholen, bis ein Impfstoff verfügbar ist. (Und wenn es keinen Impfstoff gibt, wiederholen wir es, bis die Herdenimmunität erreicht ist... im Jahr 2022).

Es scheint zunächst sinnvoll, solch einen Plan anhand der Kapazitäten der Intensivstationen zu machen, aber dabei übersehen wir zahlreiche wesentliche Dinge, die wir hier *nicht* simulieren können. Zum Beispiel:

**Psychische Aspekte:** Einsamkeit ist einer der größten Risikofaktoren für Depressionen, Angstzustände und Selbstmord. Und sie führt statistisch gesehen genauso häufig zu einem frühen Tod, wie das Rauchen von 15 Zigaretten am Tag..[^loneliness]

.[^loneliness]: Siehe [Abbildung 6 aus Holt-Lunstad & Smith 2010](https://journals.sagepub.com/doi/abs/10.1177/1745691614568352). Natürlich müssen wir einschränkend die Frage stellen, ob sie tatsächlich eine *Korrelation* gefunden haben. Aber wenn wir Menschen nicht nach dem Zufallsprinzip ein Leben in Einsamkeit verordnen wollen, müssen wir für unsere Annahmen auf solche Beobachtungen zurückgreifen.

**Wirtschaftliche Aspekte:** Die Frage nach der Wirtschaft klingt so, als ob man sich mehr um Dollar als um Leben kümmert, aber "die Wirtschaft" besteht nicht nur aus Aktien: Es geht um die Fähigkeit der Menschen, sich um ihre Liebsten zu kümmern, in die Zukunft ihrer Kinder zu investieren und Kunst, Essen und Videospiele zu genießen. All das also, was das Leben lebenswert macht. Dazu kommt, dass Armut *an sich* gravierende Auswirkungen auf die geistige und körperliche Gesundheit hat.

Das ist kein Plädoyer gegen erneute Lockdowns! Wir werden uns später mit möglichen Vorgehensweisen dazu befassen. Trotzdem ist es nicht ideal.

Was also tun? Hmmm ... haben Taiwan und Südkorea nicht *bereits* COVID-19 in den Griff bekommen? Für vier ganze Monate und *ohne* längerfristige Lockdowns?

Wie ist das möglich?

###Szenario 4: Testen, Verfolgen, Isolieren

*Sicherlich hätten wir das tun können, was Taiwan und Südkorea am Anfang getan haben. Aber dazu ist es jetzt ist es zu spät. Wir haben den Start verpasst. "*

Aber erinnert euch daran: "Ein Lockdown ist keine Heilung, es ist nur ein Neustart"... **und ein Neustart ist das, was wir brauchen.**

Um zu verstehen, wie Taiwan und Südkorea COVID-19 in den Griff bekommen haben, müssen wir den genauen zeitlichen Ablauf einer typischen COVID-19-Infektion verstehen[^timeline]:

[^timeline]: **durchschnittlich 3 Tage bis zur Ansteckungsgefahr:** "Unter der Annahme einer Verteilung der Inkubationszeit von durchschnittlich 5,2 Tagen aus einer separaten Studie über frühe COVID-19-Fälle folgerten wir, dass die Ansteckung 2,3 Tage (95% CI, 0,8-3,0 Tage) vor Symptombeginn lag" (Das bedeutet: Wenn die Symptome nach 5 Tagen beginnen, hat man sich schon 2 Tage vorher angesteckt = Ansteckungsgefahr 3 Tage nach der Ansteckung)
    
    ** durchschnittlich 4 Tage bis zur Ansteckung einer anderen Person:** "Das durchschnittliche [serielle] Intervall betrug 3,96 Tage (95% CI 3,53-4,39 Tage)" [Du Z, Xu X, Wu Y, Wang L, Cowling BJ, Ancel Meyers L](https://wwwnc.cdc.gov/eid/article/26/6/20-0357_article)
 
     ** durchschnittlich 5 Tage bis zum Auftreten von Symptomen:** "Die mediane Inkubationszeit wurde auf 5,1 Tage geschätzt (95% CI, 4,5 bis 5,8 Tage)" [Lauer SA, Grantz KH, Bi Q, et al](https://annals.org/AIM/FULLARTICLE/2762808/INCUBATION-PERIOD-CORONAVIRUS-DISEASE-2019-COVID-19-FROM-PUBLICLY-REPORTED)

![](pics/timeline1.png)

Wenn sich Menschen erst dann selbst isolieren, wenn sie wissen, dass sie krank sind (d.h. wenn sie Symptome spüren), kann sich das Virus trotzdem ausbreiten:

![](pics/timeline2.png)

Und in der Tat sind 44% aller Übertragungen so: Sie finden *vor* dem Auftreten von Symptomen statt! [^pre_symp]

[^pre_symp]: Wir schätzten, dass 44% (95% Konfidenzintervall, 25-69%) der sekundären Fälle während des präsymptomatischen Stadiums der Indexfälle infiziert wurden. [He, X., Lau, E.H.Y., Wu, P. et al](https://www.nature.com/articles/s41591-020-0869-5)

Aber, wenn wir die stattgefundenen und engsten Kontakte einer Person, die Symptome hat, finden *und unter Quarantäne stellen* ... stoppen wir die Ausbreitung, indem wir einen Schritt voraus bleiben!

![](pics/timeline3.png)

Diese Idee wird als **Kontaktverfolgung** bezeichnet. Sie wurde bereits zur Eindämmung von Ebola[^ebola] verwendet, und ist jetzt zentraler Bestandteil der Eindämmungsstrategie von COVID-19 in Taiwan & Südkorea!

[^ebola]: Kontaktverfolgung war eine entscheidende Intervention in Liberia und stellte eine der größten Kontaktverfolgungsbemühungen während einer Epidemie in der Geschichte dar. [Swanson KC, Altare C, Wesseh CS, et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6152989/)

(Dies ermöglicht uns auch, unsere begrenzten Test-Kapazitäten effizienter zu nutzen, um <icon i></icon> vor dem Ausbruch von Symptomen zu finden, ohne so gut wie alle testen zu müssen.)

Normalerweise werden Kontakte durch persönliche Interviews gefunden, aber diese *alleine* sind zu langsam für das ~48-Stunden-Fenster von COVID-19. Aus diesem Grund brauchen Kontaktverfolger Hilfe und werden deshalb unterstützt von - *NICHT* ersetzt durch - Kontaktverfolgungs-Apps.

(Diese Idee stammt nicht von "Nerds": Die Verwendung einer App zur Bekämpfung von COVID-19 wurde zuerst von [einem Team von Epidemiolog\*innen aus Oxford](https://science.sciencemag.org/content/early/2020/04/09/science.abb6936) vorgeschlagen.)

Aber warte, Apps, die zurückverfolgen, mit wem du in Kontakt warst?... Bedeutet das, Deine Privatsphäre aufzugeben und Big Brother zu opfern?

Verdammt nein! **[DP-3T](https://github.com/DP-3T/documents#decentralized-privacy-preserving-proximity-tracing)**, ein Team von Epidemiolog\*innen & Verschlüsselungsexpert\*innen (darunter einer von uns, Marcel Salathé), entwickelt *bereits* eine Anwendung zur Kontaktverfolgung - mit einem für die Öffentlichkeit zugänglichen Code -, die **keine Informationen preisgibt über Deine Identität, Deinen Standort, wer Deine Kontakte sind und nicht einmal darüber, *wie viele Kontakte* Du hattest.**

Das funktioniert so:

![](pics/dp3t.png)

(& [hier findest Du den vollständigen Comic](https://ncase.me/contact-tracing/))

Zusammen mit ähnlichen Teams wie TCN Protocol[^tcn] und MIT PACT[^pact] haben sie Apple & Google dazu gebracht, Kontaktverfolgung bei Wahrung der Privatsphäre direkt in Android/iOS zu implementieren.[^gapple] (Du traust Google/Apple nicht? Gut! Das Schöne an diesem System ist, dass es kein Vertrauen *benötigt*). Bald wird Deine örtliche Gesundheitsbehörde Dich vielleicht bitten, eine App herunterzuladen. Wenn der Schutz der Privatsphäre dabei gesichert und der Code öffentlich zugänglich ist, dann tue das bitte!

[^tcn]: [Temporary Contact Numbers, ein dezentralisiertes Protokoll zur Kontaktverfolgung unter Wahrung der Privatsphäre](https://github.com/TCNCoalition/TCN#tcn-protocol)

[^pact]: [PACT: Private Automated Contact Tracing](https://pact.mit.edu/)

[^gapple]: [Apple und Google kooperieren bei einer COVID-19 Kontaktverfolgungs-Techhnologie ](https://www.apple.com/ca/newsroom/2020/04/apple-and-google-partner-on-covid-19-contact-tracing-technology/). Bitte beachte: Sie entwickeln diese Apps nicht *selbst*, sondern nur die Umgebungen, die diese Apps *unterstützen*.

Aber was ist mit den Menschen ohne Smartphones? Oder Infektionen durch Türklinken? Oder "echte" asymptomatische Fälle? Apps zur Kontaktverfolgung können nicht alle Übertragungen erfassen... *und das ist okay!* Wir müssen nicht *alle* Übertragungen erfassen, nur 60%+ um R < 1 zu erreichen.

(Dazu ein Rant über die Verwirrung zwischen prä-symptomatisch und "echter" Asymptomatik. "Echte" Asymptomatiken sind selten:[^rant])

[^rant]: Viele Nachrichtenberichte - und ehrlich gesagt auch viele wissenschaftlichen Arbeiten - unterscheiden nicht zwischen "Fällen, die keine Symptome zeigten, als wir sie getestet haben" (präsymptomatisch) und "Fällen, die *immer* keine Symptome zeigten". (wirklich asymptomatisch). Sie könnten den Unterschied nur feststellen, wenn sie die Fälle später nachverfolgen würden. Genau das hat [diese Studie] (https://wwwnc.cdc.gov/eid/article/26/8/20-1274_article) getan. In einem Callcenter in Südkorea, das einen COVID-19-Ausbruch hatte, blieben nur 4 (1,9 %) Fälle innerhalb von 14 Tagen nach der Quarantäne asymptomatisch, und keiner ihrer Haushaltskontakte erwarb Sekundärinfektionen (Disclaimer: Vorzeitige Veröffentlichungen von Artikeln, gelten nicht als endgültige Versionen.) Das bedeutet also, dass "echte Asymptomatik" selten ist, und die Ansteckung mit einer echten Asymptomatik kann sogar noch seltener sein!

Die Isolierung *symptomatischer* Fälle würde R um bis zu 40% reduzieren, und die Quarantäne ihrer *pre/a-symptomatischen* Kontakte würde R um bis zu 50% reduzieren[^oxford]:

[^oxford]: From the same Oxford study that first recommended apps to fight COVID-19: [Luca Ferretti & Chris Wymant et al](https://science.sciencemag.org/content/early/2020/04/09/science.abb6936/tab-figures-data) See Figure 2. Assuming R<sub>0</sub> = 2.0, they found that:    
    
    * Symptomatics contribute R = 0.8 (40%)
    * Pre-symptomatics contribute R = 0.9 (45%)
    * Asymptomatics contribute R = 0.1 (5%, though their model has uncertainty and it could be much lower)
    * Environmental stuff like doorknobs contribute R = 0.2 (10%)

    And add up the pre- & a-symptomatic contacts (45% + 5%) and you get 50% of R!

<div class="sim">
		<iframe src="sim?stage=int-4a&format=calc" width="285" height="340"></iframe>
</div>

Das bedeutet, dass wir auch ohne 100%ige Kontaktquarantäne R < 1 bekommen können *ohne Lockdown!* Das ist somit viel besser für unsere psychische und wirtschaftliche Verfassung. (Menschen, die sich selbst isolieren, *müssen von den Regierungen Unterstützung erhalten* - Kostenübernahme für die Tests, Arbeitsschutz, subventionierten bezahlten Urlaub usw. Das ist insgesamt immer noch viel billiger als periodische Lockdowns).

Wir behalten dann R < 1 bis wir einen Impfstoff haben, der gefährdete <icon s></icon>s zu immunisierten <icon r></icon> macht. Herdenimmunität auf die *richtige* Art:

<div class="sim">
		<iframe src="sim?stage=int-4b&format=calc" width="285" height="230"></iframe>
</div>

(Hinweis: Dieser Rechner erweckt den Anschein, als seien die Impfstoffe zu 100% wirksam. In Wirklichkeit müssten wir durch Impfung aber *mehr* als "Herdenimmunität" schaffen, um *wirklich* eine Herdenimmunität zu erhalten)

Okay, genug der Worte. Das hier ist eine Simulation von ...

1. ... einem Lockdown über wenige Monate, bis wir...
2. umschalten auf "Testen, Verfolgen, Isolieren", bis wir...
3. genug Leute impfen, was bedeutet, dass...
4. wir gewinnen.

<div class="sim">
		<iframe src="sim?stage=int-5&format=lines" width="800" height="540"></iframe>
</div>

Das war's also! So machen wir eine Notlandung mit unserem Flugzeug.

So schlagen wir COVID-19.

...

Aber was ist, wenn die Dinge *immer noch* schief gehen? Die Dinge sind ja bereits schrecklich schief gelaufen. Wer so überlegt hat Angst - und das ist gut so! Angst gibt uns Energie, um *Sicherungspläne* zu erstellen.

Der Pessimist erfindet den Fallschirm.

###Scenario 4+: Masks For All, Summer, Circuit Breakers

What if R<sub>0</sub> is way higher than we thought, and the above interventions, even with mild distancing, *still* aren't enough to get R < 1?

Remember, even if we can't get R < 1, reducing R still reduces the "overshoot" in total cases, thus saving lives. But still, R < 1 is the ideal, so here's a few other ways to reduce R:

**Masks For All:**

*"Wait,"* you might ask, *"I thought face masks don't stop you from getting sick?"*

You're right. Masks don't stop you from getting sick[^incoming]... they stop you from getting *others* sick.

[^incoming]: “None of these surgical masks exhibited adequate filter performance and facial fit characteristics to be considered respiratory protection devices.” [Tara Oberg & Lisa M. Brosseau](https://www.sciencedirect.com/science/article/pii/S0196655307007742)

[^outgoing]: “The overall 3.4 fold reduction [70% reduction] in aerosol copy numbers we observed combined with a nearly complete elimination of large droplet spray demonstrated by Johnson et al. suggests that surgical masks worn by infected persons could have a clinically significant impact on transmission.” [Milton DK, Fabian MP, Cowling BJ, Grantham ML, McDevitt JJ](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3591312/)

[^homemade]: [Davies, A., Thompson, K., Giri, K., Kafatos, G., Walker, J., & Bennett, A](https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/testing-the-efficacy-of-homemade-masks-would-they-protect-in-an-influenza-pandemic/0921A05A69A9419C862FA2F35F819D55) See Table 1: a 100% cotton T-shirt has around 2/3 the filtration efficiency as a surgical mask, for the two bacterial aerosols they tested.

![](pics/masks.png)

To put a number on it: surgical masks *on the sick person* reduce cold & flu viruses in aerosols by 70%.[^outgoing] Reducing transmissions by 70% would be as large an impact as a lockdown!

However, we don't know for sure the impact of masks on COVID-19 *specifically*. In science, one should only publish a finding if you're 95% sure of it. (...should.[^replication]) Masks, as of May 1st 2020, are less than "95% sure".

[^replication]: Any actual scientist who read that last sentence is probably laugh-crying right now. See: [p-hacking](https://en.wikipedia.org/wiki/Data_dredging), [the replication crisis](https://en.wikipedia.org/wiki/Replication_crisis))

However, pandemics are like poker. **Make bets only when you're 95% sure, and you'll lose everything at stake.** As a recent article on masks in the British Medical Journal notes,[^precautionary] we *have* to make cost/benefit analyses under uncertainty. Like so:

[^precautionary]: “It is time to apply the precautionary principle” [Trisha Greenhalgh et al \[PDF\]](https://www.bmj.com/content/bmj/369/bmj.m1435.full.pdf)

Cost: If homemade cloth masks (which are ~2/3 as effective as surgical masks[^homemade]), super cheap. If surgical masks, more expensive but still pretty cheap.

Benefit: Even if it's a 50–50 chance of surgical masks reducing transmission by 0% or 70%, the average "expected value" is still 35%, same as a half-lockdown! So let's guess-timate that surgical masks reduce R by up to 35%, discounted for our uncertainty. (Again, you can challenge our assumptions by turning the sliders up/down)

<div class="sim">
		<iframe src="sim?stage=int-6a&format=calc" width="285" height="380"></iframe>
</div>

(other arguments for/against masks:[^mask_args])

[^mask_args]: **"We need to save supplies for hospitals."** *Absolutely agreed.* But that's more of an argument for increasing mask production, not rationing. In the meantime, we can make cloth masks.

   **"They're hard to wear correctly."** It's also hard to wash your hands according to the WHO Guidelines – seriously, "Step 3) right palm over left dorsum"?! – but we still recommend handwashing, because imperfect is still better than nothing.
   
   **"It'll make people more reckless with handwashing & social distancing."** Sure, and safety belts make people ignore stop signs, and flossing makes people eat rocks. But seriously, we'd argue the opposite: masks are a *constant physical reminder* to be careful – and in East Asia, masks are also a symbol of solidarity!
    
    

Masks *alone* won't get R < 1. But if handwashing & "Test, Trace, Isolate" only gets us to R = 1.10, having just 1/3 of people wear masks would tip that over to R < 1, virus contained!

**Summer:**

Okay, this isn't an "intervention" we can control, but it will help! Some news outlets report that summer won't do anything to COVID-19. They're half right: summer won't get R < 1, but it *will* reduce R.

For COVID-19, every extra 1° Celsius (2.2° Fahrenheit) makes R drop by 1.2%.[^heat] The summer-winter difference in New York City is 15°C (60°F), so summer will make R drop by 18%.

[^heat]: “One-degree Celsius increase in temperature [...] lower[s] R by 0.0225” and “The average R-value of these 100 cities is 1.83”. 0.0225 ÷ 1.83 = ~1.2%. [Wang, Jingyuan and Tang, Ke and Feng, Kai and Lv, Weifeng](https://papers.ssrn.com/sol3/Papers.cfm?abstract_id=3551767)

<div class="sim">
		<iframe src="sim?stage=int-6b&format=calc" width="285" height="220"></iframe>
</div>

Summer alone won't make R < 1, but if we have limited resources, we can scale back some interventions in the summer – so we can scale them *higher* in the winter.

**A "Circuit Breaker" Lockdown:**

And if all that *still* isn't enough to get R < 1... we can do another lockdown.

But we wouldn't have to be 2-months-closed / 1-month-open over & over! Because R is reduced, we'd only need one or two more "circuit breaker" lockdowns before a vaccine is available. (Singapore had to do this recently, "despite" having controlled COVID-19 for 4 months. That's not failure: this *is* what success takes.)

Here's a simulation a "lazy case" scenario:

1. Lockdown, then
2. A moderate amount of hygiene & "Test, Trace, Isolate", with a mild amount of "Masks For All", then...
3. One more "circuit breaker" lockdown before a vaccine's found.

<div class="sim">
		<iframe src="sim?stage=int-7&format=lines&height=620" width="800" height="620"></iframe>
</div>

Not to mention all the *other* interventions we could do, to further push R down:

* Travel restrictions/quarantines
* Temperature checks at malls & schools
* Deep-cleaning public spaces
* [Replacing hand-shaking with foot-bumping](https://twitter.com/V_actually/status/1233785527788285953)
* And all else human ingenuity shall bring

. . .

We hope these plans give you hope. 

**Even under a pessimistic scenario, it *is* possible to beat COVID-19, while protecting our mental and financial health.** Use the lockdown as a "reset button", keep R < 1 with case isolation + privacy-protecting contract tracing + at *least* cloth masks for all... and life can get back to a normal-ish!

Sure, you may have dried-out hands. But you'll get to invite a date out to a comics bookstore! You'll get to go out with friends to watch the latest Hollywood cash-grab. You'll get to people-watch at a library, taking joy in people going about the simple business of *being alive.*

Even under the worst-case scenario... life perseveres.

So now, let's plan for some *worse* worst-case scenarios. Water landing, get your life jacket, and please follow the lights to the emergency exits:

<!-- "The next few years" übersetzt von jan.koelling -->
<div class="section chapter">
    <div>
		<img src="banners/curve.png" height=480 style="position: absolute;"/>
        <div>Die nächsten paar Jahre</div>
    </div>
</div>

Du bekommst COVID-19 und erholst dich. Oder du bekommst die COVID-19-Impfung. So oder so bist du jetzt immun...

...*für wie lange?*


* COVID-19 ist am engsten mit SARS verwandt, welches den Überlebenden 2 Jahre Immunität brachte.[^SARS immunity]
* Die Coronaviren, die normale Erklältungen auslösen, bringen dir 8 Monate Immunität.[^cold immunity]
* Es gibt Berichte von Leuten die sich von COVID-19 erholt hatten, dann aber wieder positiv gestestet wurden. Es ist noch unklar ob diese falsch postiv waren.[^unclear]
* Eine *noch nicht fachlich begutachtete* Studie an Affen, zeigte Immunität gegen COVID-19 Coronaviren für zu mindest 28 Tage.[^monkeys]

Aber für COVID-19 *beim Menschen* ist, Stand 1. Mai 2020, "für wie lange" die große Unbekannte.

[^SARS immunity]: SARS-spezifische Antikörper wurden für durchschnittlich 2 Jahre erhalten [...] Daher könnten SARS-Patienten ≥3 Jahre nach ursprünglichem Kontakt für eine Neuinfektion anfällig sein. [Wu LP, Wang NC, Chang YH, et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2851497/) 
"Leider" werden wir niemals wissen wie lange SARS Immunität wirklich erhalten geblieben wäre, da wir es so schnell ausgerottet haben.

<!-- Read paper to check what 'enrollment' stands for in this context. I guessed enrollment of a patient for the study. -->
[^cold immunity]: Wir konnten keinen signifikaten Unterschied zwischen der Wahrscheinlichkeit für wenigsten einen positiven Test und der Wahrscheinlichkeit eines Wiederauftretens für die Beta-Coronaviren HKU1 und OC43 34 Wochen nach Registrierung für die Studienteilnahme/der Erstinfektion feststellen. [Marta Galanti & Jeffrey Shaman (PDF)](http://www.columbia.edu/~jls106/galanti_shaman_ms_supp.pdf)

[^unclear]: Nachdem eine Person einen Virus abgewährt hat, neigen Viruspartikel dazu eine Weile zu verbleiben. Diese Partikel können keine Infektion auslösen aber sie können zu einem positiven Testergebnis führen. [from STAT News by Andrew Joseph](https://www.statnews.com/2020/04/20/everything-we-know-about-coronavirus-immunity-and-antibodies-and-plenty-we-still-dont/)

[^monkeys]: From [Bao et al.](https://www.biorxiv.org/content/10.1101/2020.03.13.990226v1.abstract) *Hinweis: Dieser Artikel ist ein Preprint und wurde noch nicht wissenschaftliche begutachtet.* 
Außerdem, um es hervorzuheben: es wurde nur eine erneute Infektion nach 28 Tagen getestet.

Für die folgenden Simulationen, lass uns annehmen dass es 1 Jahr ist. 
**Hier ist eine Simulation die mit 100% <icon r></icon> anfängt**, dann nach einem Jahr exponentiell zerfällt zu anfälligen, nicht immunen <icon s></icon>s, im *Mittel*, mit Abweichungen:

<div class="sim">
		<iframe src="sim?stage=yrs-1&format=lines&height=600" width="800" height="600"></iframe>
</div>

Rückkehr des exponentiellen Zerfalls!

Das ist das **SEIRS Modell**. Das letzte "S" steht wieder für <icon s></icon> "Susceptible" (anfällig).

![](pics/seirs.png)

Lass uns jetzt einen COVID-19 Ausbruch über 10 Jahre, ohne Interventionen simulieren... *wenn Immunität nur ein Jahr anhält:*

<div class="sim">
		<iframe src="sim?stage=yrs-2&format=lines&height=600" width="800" height="600"></iframe>
</div>

In vorangegangen Simulationen hatten wir nur *eine* die Intensivstationen überfordernde Spitze. Jetzt haben wir mehrere und die <icon i></icon> Fälle pendeln sich *dauerhaft* bei der Kapazität der Intensivstationen ein.
(Denk dran, diese hatten wir für diese Simulationen *verdreifacht*.)

R = 1, es ist **endemisch.**

Zum Glück reduziert der Sommer R, was die Situation verbessert:

<div class="sim">
		<iframe src="sim?stage=yrs-3&format=lines&height=640" width="800" height="640"></iframe>
</div>

Oh.


Überraschenderweise macht der Sommer die Spitzen schlimmer *und* regelmäßig! Das liegt daran, dass der Sommer die neuen <icon i></icon>s absenkt, was aber wiederum die neuen imunen <icon r></icon>s absenkt. Das bedeutet, Immunität stürzt im Sommer ab was eine große, wiederkehrende Spitze im Winter *erzeugt*.

Zum Glück ist die Lösung hierfür recht klar – impft die Menschen jeden Herbst/Winter, so wie es auch mit den Grippeimpfungen gemacht wird:

**(Nachdem du die Aufnahme abgespielt hast, versuche deine eigenen Impfkampagnen zu simulieren! Denk dran, dass du die Simulation jederzeit pausieren/fortsetzen kannst.)**

<div class="sim">
		<iframe src="sim?stage=yrs-4&format=lines" width="800" height="540"></iframe>
</div>

Hier ist die erschreckendere Frage:

Was ist, wenn es über *Jahre* keinen Impfstoff gibt? Oder *niemals*?

**Zur Klarstellung: das ist unwahrscheinlich.** Die meisten Epidemiologen rechnen mit einem Impfstoff in 1 bis 2 Jahren. Ja, es gab noch nie einen Impfstoff für eines der anderen Coronaviren, aber das liegt daran, dass SARS schnell ausgelöscht wurde und die normale Erkältung die Investition nicht gerechtfertigt hat. 

Dennoch haben Forscher für Infektionskrankheiten Besorgnis geäußert: Was ist, wenn wir nicht genug herstellen können?[^vax_enough] Was, wenn wir es überstürzen und es nicht sicher ist?[^vax_safe]

[^vax_enough]: Falls ein Impfstoff für Coronavirus erscheint, kann die Welt genug davon herstellen? [by Roxanne Khamsi, on Nature](https://www.nature.com/articles/d41586-020-01063-8)

[^vax_safe]: Drängt nicht auf die Herausgabe von COVID-19 Impfstoffen und Medikamenten ohne ausreichende Sicherheitsgrantien [by Shibo Jiang, on Nature](https://www.nature.com/articles/d41586-020-00751-9)

Selbst im Albtraumszenario "kein Impfstoff", haben wir noch 3 Auswege. Vom aller schlimmsten zum am wenigsten schlimmen:

1) Mach einen periodischen Lockdown oder lockere R < 1 Interventionen, um "natürliche Herdenimmunität" zu erreichen. (Warnung: Das würde zu vielen Todesfällen & beschädigten Lungen führen. *Und* es wird nicht funktionieren, falls Immunität nicht anhält.)

2) Mach die R < 1 Interventionen für immer. Kontaktverfolgung & das Tragen von Masken werden zur neuen Normalität in der Welt nach COVID-19, so wie Tests auf Geschlechtskrankheiten & das Tragen von Kondomen die neue Normalität in der Welt nach HIV wurden.

3) Mach die R < 1 Interventionen bis wir Behandlungsoptionen entwickelt haben die es viel, viel unwahrscheinlicher machen, dass COVID-19 Intensivmedizin erfordert. (Das sollten wir *auf jeden Fall* tun!) Den Bedarf für Intensivstationen um das 10-fache zu senken hat den gleichen Effekt wie die Kapazität der Intensivstationen um das 10-fache zu erhöhen:

**Hier ist eine Simulation *ohne* anhaltende Immunität, *ohne* Impfsstoff und selbst ohne irgendeine Intervention – einfach ein langsamer Anstiegt der Kapazitäten um die langfristigen Spitzen zu überleben:**

<div class="sim">
		<iframe src="sim?stage=yrs-5&format=lines" width="800" height="540"></iframe>
</div>

Selbst im schlimmsten Worst-Case Szenario... das Leben hält durch.

. . .

Vielleicht möchtest du unsere Annahmen hinterfragen und andere R<sub>0</sub>'s oder Werte ausprobierne. Oder deine *eigene* Kombination von Interventionsmaßnahmen ausprobieren!

**Hier ist ein (optionaler) Sandkastenmodus bei dem *alles* verfügbar ist. (Scrolle um alle Einstellungen zu sehen) Simuliere und spiele nach Herzenslust herum:**

<div class="sim">
		<iframe src="sim?stage=SB&format=sb" width="800" height="540"></iframe>
</div>

Dieser einfache "epidemische Flugsimulator" hat uns viel beigebracht. Er hat es ermöglicht Fragen zu den letzten paar Monaten, den nächsten paar Monaten und den nächsten paar Jahren zu beantworten.

Lass uns abschließend zurückkehren zu...

<div class="section chapter">
    <div>
		<img src="banners/curve.png" height=480 style="position: absolute;"/>
        <div>Das Jetzt</div>
    </div>
</div>
Plane's sunk. We've scrambled onto the life rafts. It's time to find dry land.[^dry_land]

[^dry_land]: Dry land metaphor [from Marc Lipsitch & Yonatan Grad, on STAT News](https://www.statnews.com/2020/04/01/navigating-covid-19-pandemic/)

Teams of epidemiologists and policymakers ([left](https://www.americanprogress.org/issues/healthcare/news/2020/04/03/482613/national-state-plan-end-coronavirus-crisis/), [right](https://www.aei.org/research-products/report/national-coronavirus-response-a-road-map-to-reopening/ ), and [multi-partisan](https://ethics.harvard.edu/covid-roadmap)) have come to a consensus on how to beat COVID-19, while protecting our lives *and* liberties.

Here's the rough idea, with some (less-consensus) backup plans:

![](pics/plan.png)

So what does this mean for YOU, right now?

**For everyone:** Respect the lockdown so we can get out of Phase I asap. Keep washing those hands. Make your own masks. Download a *privacy-protecting* contact tracing app when those are available next month. Stay healthy, physically & mentally! And write your local policymaker to get off their butt and...

**For policymakers:** Make laws to support folks who have to self-isolate/quarantine. Hire more manual contact tracers, *supported* by privacy-protecting contact tracing apps. Direct more funds into the stuff we should be building, like...

**For builders:** Build tests. Build ventilators. Build personal protective equipment for hospitals. Build tests. Build masks. Build apps. Build antivirals, prophylactics, and other treatments that aren't vaccines. Build vaccines. Build tests. Build tests. Build tests. Build hope. 

Don't downplay fear to build up hope. Our fear should *team up* with our hope, like the inventors of airplanes & parachutes. Preparing for horrible futures is how we *create* a hopeful future.

The only thing to fear is the idea that the only thing to fear is fear itself.
