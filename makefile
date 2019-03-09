SOURCES=$(wildcard **/*.md)

saltvand-i-blodet-build.pdf: $(SOURCES)
	pandoc --template=pdf-template.latex -o $@ \
		sejlskibe/introduktion.md \
		sejlskibe/livet-paa-land.md \
		sejlskibe/far-vel.md \
		sejlskibe/hoj-og-lav.md \
		sejlskibe/lev-vel.md \
		sejlskibe/sjov-og-alvor.md \
		sejlskibe/pas-paa.md \
		sejlskibe/den-store-verden.md \
		dampskibe/introduktion.md \
		dampskibe/en-landkrappe.md \
		dampskibe/adieu.md \
		dampskibe/op-og-ned.md \
		dampskibe/hygiejniske-forhold.md \
		dampskibe/en-hyggelig-dille.md \
		dampskibe/advarsel.md \
		dampskibe/paa-kimmingends-hojkant.md \
		coastere/introduktion.md \
		coastere/torre-taer.md \
		coastere/afskeden.md \
		coastere/hips-om-haps.md \
		coastere/levnedsomstaendigheder.md \
		coastere/afveksling.md \
		coastere/de-vilde-vover.md \
		coastere/lidt-paa-kanten.md \
		containerskibe/introduktion.md \
		containerskibe/livet-paa-land.md \
		containerskibe/det-forste-dyp.md \
		containerskibe/besaetningen.md \
		containerskibe/opfordringen.md \
		containerskibe/fritid-eller-levetid.md \
		containerskibe/arbejdsvilkaar.md \
		containerskibe/verdenens-omvaeltning.md


