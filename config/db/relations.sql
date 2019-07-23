ALTER TABLE verlofaanvraag MODIFY employee INT(11);ALTER TABLE verlofaanvraag ADD CONSTRAINT FK_VerlofaanvraagEmployee FOREIGN KEY (employee) REFERENCES medewerker(id);
ALTER TABLE verlofmutatie MODIFY absencerequest INT(11);ALTER TABLE verlofmutatie ADD CONSTRAINT FK_VerlofmutatieAbsencerequest FOREIGN KEY (absencerequest) REFERENCES verlofaanvraag(id);
ALTER TABLE bedrijf MODIFY accountmanager INT(11);ALTER TABLE bedrijf ADD CONSTRAINT FK_BedrijfAccountmanager FOREIGN KEY (accountmanager) REFERENCES medewerker(id);
ALTER TABLE contactpersoon MODIFY company INT(11);ALTER TABLE contactpersoon ADD CONSTRAINT FK_ContactpersoonCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE contract MODIFY company INT(11);ALTER TABLE contract ADD CONSTRAINT FK_ContractCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE contract MODIFY contact INT(11);ALTER TABLE contract ADD CONSTRAINT FK_ContractContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE contractregel MODIFY contract INT(11);ALTER TABLE contractregel ADD CONSTRAINT FK_ContractregelContract FOREIGN KEY (contract) REFERENCES contract(id);
ALTER TABLE contractregel MODIFY product INT(11);ALTER TABLE contractregel ADD CONSTRAINT FK_ContractregelProduct FOREIGN KEY (product) REFERENCES verkoopproduct(id);
ALTER TABLE contractregel MODIFY unit INT(11);ALTER TABLE contractregel ADD CONSTRAINT FK_ContractregelUnit FOREIGN KEY (unit) REFERENCES producteenheid(id);
ALTER TABLE medewerker MODIFY userphoto INT(11);ALTER TABLE medewerker ADD CONSTRAINT FK_MedewerkerUserphoto FOREIGN KEY (userphoto) REFERENCES file(id);
ALTER TABLE medewerkerdatum MODIFY employee INT(11);ALTER TABLE medewerkerdatum ADD CONSTRAINT FK_MedewerkerdatumEmployee FOREIGN KEY (employee) REFERENCES medewerker(id);
ALTER TABLE mijnuren MODIFY task INT(11);ALTER TABLE mijnuren ADD CONSTRAINT FK_MijnurenTask FOREIGN KEY (task) REFERENCES taak(id);
ALTER TABLE mijnuren MODIFY employee INT(11);ALTER TABLE mijnuren ADD CONSTRAINT FK_MijnurenEmployee FOREIGN KEY (employee) REFERENCES medewerker(id);
ALTER TABLE mijnuren MODIFY offerprojectline INT(11);ALTER TABLE mijnuren ADD CONSTRAINT FK_MijnurenOfferprojectline FOREIGN KEY (offerprojectline) REFERENCES onderdeel(id);
ALTER TABLE mijnuren MODIFY authorizedby INT(11);ALTER TABLE mijnuren ADD CONSTRAINT FK_MijnurenAuthorizedby FOREIGN KEY (authorizedby) REFERENCES medewerker(id);
ALTER TABLE mijnuren MODIFY definitiveby INT(11);ALTER TABLE mijnuren ADD CONSTRAINT FK_MijnurenDefinitiveby FOREIGN KEY (definitiveby) REFERENCES medewerker(id);
ALTER TABLE factuur MODIFY company INT(11);ALTER TABLE factuur ADD CONSTRAINT FK_FactuurCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE factuur MODIFY contact INT(11);ALTER TABLE factuur ADD CONSTRAINT FK_FactuurContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE factuurregel MODIFY invoice INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelInvoice FOREIGN KEY (invoice) REFERENCES factuur(id);
ALTER TABLE factuurregel MODIFY ledger INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelLedger FOREIGN KEY (ledger) REFERENCES grootboek(id);
ALTER TABLE factuurregel MODIFY costheading INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelCostheading FOREIGN KEY (costheading) REFERENCES kostenplaats(id);
ALTER TABLE factuurregel MODIFY product INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelProduct FOREIGN KEY (product) REFERENCES verkoopproduct(id);
ALTER TABLE factuurregel MODIFY unit INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelUnit FOREIGN KEY (unit) REFERENCES producteenheid(id);
ALTER TABLE factuurregel MODIFY project INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelProject FOREIGN KEY (project) REFERENCES opdracht(id);
ALTER TABLE factuurregel MODIFY part INT(11);ALTER TABLE factuurregel ADD CONSTRAINT FK_FactuurregelPart FOREIGN KEY (part) REFERENCES onderdeel(id);
ALTER TABLE offerte MODIFY phase INT(11);ALTER TABLE offerte ADD CONSTRAINT FK_OffertePhase FOREIGN KEY (phase) REFERENCES offertefase(id);
ALTER TABLE offerte MODIFY company INT(11);ALTER TABLE offerte ADD CONSTRAINT FK_OfferteCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE offerte MODIFY contact INT(11);ALTER TABLE offerte ADD CONSTRAINT FK_OfferteContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE offerte MODIFY accountmanager INT(11);ALTER TABLE offerte ADD CONSTRAINT FK_OfferteAccountmanager FOREIGN KEY (accountmanager) REFERENCES medewerker(id);
ALTER TABLE offerte MODIFY extrapdf1 INT(11);ALTER TABLE offerte ADD CONSTRAINT FK_OfferteExtrapdf1 FOREIGN KEY (extrapdf1) REFERENCES file(id);
ALTER TABLE offerte MODIFY extrapdf2 INT(11);ALTER TABLE offerte ADD CONSTRAINT FK_OfferteExtrapdf2 FOREIGN KEY (extrapdf2) REFERENCES file(id);
ALTER TABLE onderdeel MODIFY unit INT(11);ALTER TABLE onderdeel ADD CONSTRAINT FK_OnderdeelUnit FOREIGN KEY (unit) REFERENCES producteenheid(id);
ALTER TABLE onderdeel MODIFY product INT(11);ALTER TABLE onderdeel ADD CONSTRAINT FK_OnderdeelProduct FOREIGN KEY (product) REFERENCES verkoopproduct(id);
ALTER TABLE pakket MODIFY unit INT(11);ALTER TABLE pakket ADD CONSTRAINT FK_PakketUnit FOREIGN KEY (unit) REFERENCES producteenheid(id);
ALTER TABLE pakketregel MODIFY packet INT(11);ALTER TABLE pakketregel ADD CONSTRAINT FK_PakketregelPacket FOREIGN KEY (packet) REFERENCES pakket(id);
ALTER TABLE pakketregel MODIFY product INT(11);ALTER TABLE pakketregel ADD CONSTRAINT FK_PakketregelProduct FOREIGN KEY (product) REFERENCES verkoopproduct(id);
ALTER TABLE pakketregel MODIFY unit INT(11);ALTER TABLE pakketregel ADD CONSTRAINT FK_PakketregelUnit FOREIGN KEY (unit) REFERENCES producteenheid(id);
ALTER TABLE betaling MODIFY invoice INT(11);ALTER TABLE betaling ADD CONSTRAINT FK_BetalingInvoice FOREIGN KEY (invoice) REFERENCES factuur(id);
ALTER TABLE tariefuitzondering MODIFY company INT(11);ALTER TABLE tariefuitzondering ADD CONSTRAINT FK_TariefuitzonderingCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE tariefuitzondering MODIFY product INT(11);ALTER TABLE tariefuitzondering ADD CONSTRAINT FK_TariefuitzonderingProduct FOREIGN KEY (product) REFERENCES verkoopproduct(id);
ALTER TABLE verkoopproduct MODIFY unit INT(11);ALTER TABLE verkoopproduct ADD CONSTRAINT FK_VerkoopproductUnit FOREIGN KEY (unit) REFERENCES producteenheid(id);
ALTER TABLE verkoopproduct MODIFY tasktype INT(11);ALTER TABLE verkoopproduct ADD CONSTRAINT FK_VerkoopproductTasktype FOREIGN KEY (tasktype) REFERENCES taaktype(id);
ALTER TABLE verkoopproduct MODIFY costheading INT(11);ALTER TABLE verkoopproduct ADD CONSTRAINT FK_VerkoopproductCostheading FOREIGN KEY (costheading) REFERENCES kostenplaats(id);
ALTER TABLE verkoopproduct MODIFY ledger INT(11);ALTER TABLE verkoopproduct ADD CONSTRAINT FK_VerkoopproductLedger FOREIGN KEY (ledger) REFERENCES grootboek(id);
ALTER TABLE verkoopproduct MODIFY purchaseledger INT(11);ALTER TABLE verkoopproduct ADD CONSTRAINT FK_VerkoopproductPurchaseledger FOREIGN KEY (purchaseledger) REFERENCES grootboek(id);
ALTER TABLE opdracht MODIFY accountmanager INT(11);ALTER TABLE opdracht ADD CONSTRAINT FK_OpdrachtAccountmanager FOREIGN KEY (accountmanager) REFERENCES medewerker(id);
ALTER TABLE opdracht MODIFY phase INT(11);ALTER TABLE opdracht ADD CONSTRAINT FK_OpdrachtPhase FOREIGN KEY (phase) REFERENCES opdrachtfase(id);
ALTER TABLE opdracht MODIFY company INT(11);ALTER TABLE opdracht ADD CONSTRAINT FK_OpdrachtCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE opdracht MODIFY contact INT(11);ALTER TABLE opdracht ADD CONSTRAINT FK_OpdrachtContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE inkoopfactuur MODIFY company INT(11);ALTER TABLE inkoopfactuur ADD CONSTRAINT FK_InkoopfactuurCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE inkoopfactuur MODIFY contact INT(11);ALTER TABLE inkoopfactuur ADD CONSTRAINT FK_InkoopfactuurContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE inkoopfactuurregel MODIFY purchaseinvoice INT(11);ALTER TABLE inkoopfactuurregel ADD CONSTRAINT FK_InkoopfactuurregelPurchaseinvoice FOREIGN KEY (purchaseinvoice) REFERENCES inkoopfactuur(id);
ALTER TABLE inkoopfactuurregel MODIFY ledger INT(11);ALTER TABLE inkoopfactuurregel ADD CONSTRAINT FK_InkoopfactuurregelLedger FOREIGN KEY (ledger) REFERENCES grootboek(id);
ALTER TABLE inkoopfactuurregel MODIFY costheading INT(11);ALTER TABLE inkoopfactuurregel ADD CONSTRAINT FK_InkoopfactuurregelCostheading FOREIGN KEY (costheading) REFERENCES kostenplaats(id);
ALTER TABLE inkoopfactuurregel MODIFY part INT(11);ALTER TABLE inkoopfactuurregel ADD CONSTRAINT FK_InkoopfactuurregelPart FOREIGN KEY (part) REFERENCES onderdeel(id);
ALTER TABLE inkoopopdracht MODIFY company INT(11);ALTER TABLE inkoopopdracht ADD CONSTRAINT FK_InkoopopdrachtCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE inkoopopdracht MODIFY contact INT(11);ALTER TABLE inkoopopdracht ADD CONSTRAINT FK_InkoopopdrachtContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE inkoopopdrachtregel MODIFY ledger INT(11);ALTER TABLE inkoopopdrachtregel ADD CONSTRAINT FK_InkoopopdrachtregelLedger FOREIGN KEY (ledger) REFERENCES grootboek(id);
ALTER TABLE inkoopopdrachtregel MODIFY purchaseorder INT(11);ALTER TABLE inkoopopdrachtregel ADD CONSTRAINT FK_InkoopopdrachtregelPurchaseorder FOREIGN KEY (purchaseorder) REFERENCES inkoopopdracht(id);
ALTER TABLE inkoopopdrachtregel MODIFY projectline INT(11);ALTER TABLE inkoopopdrachtregel ADD CONSTRAINT FK_InkoopopdrachtregelProjectline FOREIGN KEY (projectline) REFERENCES onderdeel(id);
ALTER TABLE inkoopbetaling MODIFY purchaseinvoice INT(11);ALTER TABLE inkoopbetaling ADD CONSTRAINT FK_InkoopbetalingPurchaseinvoice FOREIGN KEY (purchaseinvoice) REFERENCES inkoopfactuur(id);
ALTER TABLE taak MODIFY type INT(11);ALTER TABLE taak ADD CONSTRAINT FK_TaakType FOREIGN KEY (type) REFERENCES taaktype(id);
ALTER TABLE taak MODIFY phase INT(11);ALTER TABLE taak ADD CONSTRAINT FK_TaakPhase FOREIGN KEY (phase) REFERENCES taakfase(id);
ALTER TABLE taak MODIFY company INT(11);ALTER TABLE taak ADD CONSTRAINT FK_TaakCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE taak MODIFY offerprojectline INT(11);ALTER TABLE taak ADD CONSTRAINT FK_TaakOfferprojectline FOREIGN KEY (offerprojectline) REFERENCES onderdeel(id);
ALTER TABLE timelineentry MODIFY company INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryCompany FOREIGN KEY (company) REFERENCES bedrijf(id);
ALTER TABLE timelineentry MODIFY contact INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryContact FOREIGN KEY (contact) REFERENCES contactpersoon(id);
ALTER TABLE timelineentry MODIFY offer INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryOffer FOREIGN KEY (offer) REFERENCES offerte(id);
ALTER TABLE timelineentry MODIFY project INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryProject FOREIGN KEY (project) REFERENCES opdracht(id);
ALTER TABLE timelineentry MODIFY invoice INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryInvoice FOREIGN KEY (invoice) REFERENCES factuur(id);
ALTER TABLE timelineentry MODIFY purchaseinvoice INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryPurchaseinvoice FOREIGN KEY (purchaseinvoice) REFERENCES inkoopfactuur(id);
ALTER TABLE timelineentry MODIFY purchaseorder INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryPurchaseorder FOREIGN KEY (purchaseorder) REFERENCES inkoopopdracht(id);
ALTER TABLE timelineentry MODIFY contract INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryContract FOREIGN KEY (contract) REFERENCES contract(id);
ALTER TABLE timelineentry MODIFY task INT(11);ALTER TABLE timelineentry ADD CONSTRAINT FK_TimelineentryTask FOREIGN KEY (task) REFERENCES taak(id);
