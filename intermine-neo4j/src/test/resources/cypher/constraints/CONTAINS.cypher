MATCH (gene :Gene),
(gene)-[:gene]-(gene_cdss :CDS),
(gene_cdss)-[gene_cdss_ontologyannotations:ANNOTATED_BY]-(gene_cdss_ontologyannotations_datasets :DataSet),
(gene_cdss_ontologyannotations_datasets)-[:dataSets]-(gene_cdss_ontologyannotations_datasets_bioentities :BioEntity),
(gene_cdss_ontologyannotations_datasets_bioentities)-[:SYNONYM_OF]-(gene_cdss_ontologyannotations_datasets_bioentities_synonyms :Synonym),
(gene_cdss_ontologyannotations_datasets_bioentities)-[:CROSS_REFERENCED_BY]-(gene_cdss_ontologyannotations_datasets_bioentities_crossreferences :CrossReference)
WHERE gene_cdss_ontologyannotations_datasets_bioentities_synonyms.value CONTAINS '5asdsadaf'
RETURN gene_cdss_ontologyannotations_datasets_bioentities_crossreferences.identifier,
gene_cdss_ontologyannotations_datasets_bioentities_synonyms.value

