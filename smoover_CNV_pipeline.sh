# Jun Chen

 cd /data/Jun/smoove/cram
# https://hpc.nih.gov/apps/
# NIH tools.
 
 # reference genome. 
 
 # ref=/data/Gallus_gallus/GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b_genomic.fna
 
 # report  using this one structure pipeline.
 # https://wiki.anunna.wur.nl/index.php/Population_structural_variant_calling_pipeline
 
 # https://brentp.github.io/post/smoove/
 
 # Jun Chen
# 5-16-2023
# Running the cnv analysis using smoove.
# https://github.com/brentp/smoove
# https://brentp.github.io/post/smoove/
# smoove analysis. 

# docker pull brentp/smoove  # This is install command.
# docker run -it brentp/smoove smoove -h

# The pipeline is below. 
# let us try it.
# docker run -it --rm --user `id -u jun` --volume /data/Jun/smoove/cram:/home/project ??
# docker run -it brentp/smoove --user `id -u jun` --volume /data/Jun/smoove/cram:/home/project


# docker run -it brentp/smoove
# start here. -------------- 
cd /data/Jun/smoove/cram

# https://hpc.nih.gov/apps/smoove.html
# smoove pipeline.

# start here
# start here
# start here
# start here
# start here
# work very well.

# run docker.
docker run -it --volume /data/Jun/smoove/cram:/home/project brentp/smoove
# pipeline from here. 
reference_fasta="GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b_genomic.fna"
threads=4
cd /home/project
# support bam format.
smoove call -x --name my-cohort --outdir ./ --fasta $reference_fasta -p $threads --genotype *.bam
# support cram format. 
smoove call -x --name my-cohort-cram --outdir ./ --fasta $reference_fasta -p $threads --genotype *.cram



# reference_fasta="/data/Gallus_gallus/GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b_genomic.fna"
# smoove call -x --name my-cohort --exclude $bed --fasta $reference_fasta -p $threads --genotype /path/to/*.bam
# docker run -it brentp/smoove smoove call -x --name my-cohort --outdir ./ --fasta $reference_fasta -p $threads --genotype *.bam

# stop here. 
# stop here. 
# stop here. 
# stop here. 
# stop here. 
# stop here. 
# stop here. 
# file:///C:/Users/CHENJU/Downloads/AG2PI-Workshop-2021-12-Notes.pdf
# individual call
smoove call --genotype \
--duphold \
--processes 1 \
--fasta ref.fa \
--exclude sample.exclude.bed
--name sample \
--outdir outdir/sample/ \
sample.bam


# mergeing
$ smoove merge --name merged \
--fasta ref.fa \
--outdir outdir/ \
[sample.genotyped.vcf.gz]    or *.smoove.genotyped.vcf.gz
### list of all vcfs from smoove call ###






# second example.
smoove call -x --genotype --name $name --outdir . \
           -f $fasta --processes 12 --exclude $bed *.bam

# check the chr name between two builds

cd /data/Gallus_gallus
grep "gggggcaatgggggctgtggggtcaatgggggcattgggggctatggggtgaatgggggt" GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b_genomic.fna


cd /data/Jun/galGal7/reference_galgal7
zgrep -A 5 "JAENSK010000614" Gallus_gallus.bGalGal1.mat.broiler.GRCg7b.dna_sm.toplevel.fa.gz
# https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_016699485.2/

# this is great.

# allele frequency account for vcf
https://www.cog-genomics.org/plink/2.0/formats
# Produced by --geno-counts.
# Produced by --freq.
# .sdiff.summary (sample-pair discordance count summary)
# Produced by --sample-diff



/data/cram/01653NQMB84R9B6KG41DSYF3B6.filtered.gg7.bam   -->  L58_brittle
/data/cram/01653PH5QG5AF8D7MW5WZRFTM7.filtered.gg7.bam   -->  L58_normal


