CREATE TABLE IF NOT EXISTS google_news (
     datetime BIGINT,
     headline VARCHAR(220) CHARACTER SET utf8,
     source VARCHAR(50) CHARACTER SET utf8,
     url VARCHAR(100) CHARACTER SET utf8,
     summary VARCHAR(1500) CHARACTER SET utf8,
     related VARCHAR(30) CHARACTER SET utf8,
     image VARCHAR(100) CHARACTER SET utf8,
     lang VARCHAR(10) CHARACTER SET utf8,
     hasPaywall VARCHAR(10) CHARACTER SET utf8
);
INSERT INTO google_news VALUES
    (1572389330000,'The slow death of Flash continues as Google begins to remove it from search – TechCrunch','TechCrunch','https://cloud.iexapis.com/v1/news/article/40a85f0c-de8c-4524-a578-d7f0db069288','The death of Flash has been a long time coming… and a long time going on, too. For years we''ve heard that it''s on its way out, but who among us has not found an errant Flash video or widget in the last month or two? To hasten its demise Google is taking the understandable step of... pretending it doesn''t exist.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/40a85f0c-de8c-4524-a578-d7f0db069288','en','False'),
    (1572387360000,'Why Does Google Want to Buy Fitbit?','Zacks Investment Research','https://cloud.iexapis.com/v1/news/article/2d2e563b-86df-434b-a024-e765fb1e222b','Google''s parent company Alphabet (GOOGL) has reportedly made an offer to buy Fitbit (FIT), sending shares of the wearables maker','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/2d2e563b-86df-434b-a024-e765fb1e222b','en','False'),
    (1572386400000,'Google workers sidestepping controversial Chrome tool spark security concerns - CNET','CNET','https://cloud.iexapis.com/v1/news/article/25f23c0d-f929-4558-bbe1-8b252afdb2c5','"I''m deeply concerned," a Google security engineer said.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/25f23c0d-f929-4558-bbe1-8b252afdb2c5','en','False'),
    (1572383654000,'Big 3 cloud infrastructure earnings reach almost $22B this quarter – TechCrunch','TechCrunch','https://cloud.iexapis.com/v1/news/article/af8a22ac-482d-4964-9b13-a65cea586acb','Amazon, Microsoft and Google are often referred to as the Big 3 in the cloud infrastructure market, and if you had any doubt about the growth potential of the cloud, take a look at this quarter’s eye-popping cloud numbers from these three companies, which reached almost $22 billion this earnings’s season. Before we get into […]','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/af8a22ac-482d-4964-9b13-a65cea586acb','en','False'),
    (1572381596000,'Alphabet, Grubhub fall; General Motors, Xerox rise','ABC News','https://cloud.iexapis.com/v1/news/article/4a7e9814-32d1-40a7-88b0-91d477e93039','Alphabet, Grubhub tumble while General Motors, Xerox rise','GOOGL,GOOG,GRUB','https://cloud.iexapis.com/v1/news/image/4a7e9814-32d1-40a7-88b0-91d477e93039','en','False'),
    (1572380633000,'Dow Ends Lower; S&P 500 Slips After Intraday Record on Strong Pharma Earnings','The Street','https://cloud.iexapis.com/v1/news/article/592ef31a-4527-4d5e-be1f-e2280a6ffc54','Stocks are falling as the S&P 500 comes off its record high and Alphabet misses earnings expectations….GOOGL','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/592ef31a-4527-4d5e-be1f-e2280a6ffc54','en','False'),
    (1572376520000,'Wall Street, en retrait avant la Fed, termine dans le rouge','La Libre','https://cloud.iexapis.com/v1/news/article/831c02f1-277b-433a-8c57-d3762cca1664','Wall Street a terminé en légère baisse mardi à l''issue d''une séance hésitante, se plaçant en retrait avant une décision de la banque centrale américaine et après une salve mitigée de résultats d''entreprises dont ceux, décevants, d''Alphabet. …','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/831c02f1-277b-433a-8c57-d3762cca1664','fr','False'),
    (1572375240000,'Australia files lawsuit against Alphabet Google for misleading consumers on stored personal data','MercoPress','https://cloud.iexapis.com/v1/news/article/f30fcdfe-b4af-4961-b7ff-57aa4b75ca25','Australia''s consumer regulator filed a lawsuit against Alphabet Inc''s Google on Tuesday, alleging it misled consumers about how it was collecting, storing and using personal location data.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/f30fcdfe-b4af-4961-b7ff-57aa4b75ca25','en','False'),
    (1572373199000,'Google''s .new shortcuts now work with Spotify, Medium and more - CNET','CNET','https://cloud.iexapis.com/v1/news/article/844c2084-54b2-417d-9be8-02c31185145c','Outside companies get a crack at Google''s time-saving .new domains.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/844c2084-54b2-417d-9be8-02c31185145c','en','False'),
    (1572373153000,'Alphabet : La « quantumtité », pas la qualité','Les Echos','https://cloud.iexapis.com/v1/news/article/6ddfc163-52c8-4cad-a37f-fdf2526873aa','Alphabet rappelle à Wall Street qu''il est aussi un fonds de capital-risque.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/6ddfc163-52c8-4cad-a37f-fdf2526873aa','fr','False'),
    (1572373126000,'Australia sues Google over Android location tracking','New York Post','https://cloud.iexapis.com/v1/news/article/fd009d43-1a85-4901-80c6-b8d9434ca4c3','CANBERRA, Australia — Australia’s consumer watchdog sued Google on Tuesday alleging the technology giant broke consumer law by misleading Android users about how their location data was collected and used. The Australian Competition and Consumer Commission accused Google of collecting information on users’ whereabouts even after they had switched off the location setting. “You could…','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/fd009d43-1a85-4901-80c6-b8d9434ca4c3','en','False'),
    (1572370829000,'Alphabet''s Share Price Weakness Is an Opportunity to Buy','The Street','https://cloud.iexapis.com/v1/news/article/7fe28931-29c4-4da9-b888-35d307e65b8a','Alphabet shares pulled back after a third quarter earnings miss that did not properly reflect the strong performance of the underlying business. The stock still looks like a compelling GARP play at current levels, more so on post-earnings weakness….GOOGL','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/7fe28931-29c4-4da9-b888-35d307e65b8a','en','False'),
    (1572368840000,'Google sees disappointing profit amid internal drama video - CNET','CNET','https://cloud.iexapis.com/v1/news/article/b55df39a-a474-49dd-b9ad-48770da52593','From The Daily Charge: We also talk about Google''s hardware prospects in the wake of its big October event.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/b55df39a-a474-49dd-b9ad-48770da52593','en','False'),
    (1572368837000,'Why Google could use Fitbit video - CNET','CNET','https://cloud.iexapis.com/v1/news/article/94353003-fcfa-4380-bc60-b371cbe1c7c6','From The Daily Charge: We break down how Google may benefit from all the data and R&D gathered by Fitbit','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/94353003-fcfa-4380-bc60-b371cbe1c7c6','en','False'),
    (1572368039000,'Blowout sale somehow slashes Google and Alexa enabled smart plugs to $4.42 each','BGR.com','https://cloud.iexapis.com/v1/news/article/0dec06c4-ab5b-46f7-87a2-e20818aff903','Well, bargain hunters, it finally happened: we found a deal that gets you top-rated smart plugs at a new all-time low price. Do you want to control all your dumb devices like fans and lamps with your smartphone or your voice? Use the coupon code TYTBCKE6 at checkout and you can pick up a 2-pack of G…','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/0dec06c4-ab5b-46f7-87a2-e20818aff903','en','False'),
    (1572365652000,'Synology CEO: Why a NAS is the solution to tiny storage space on mobile devices','TechRepublic','https://cloud.iexapis.com/v1/news/article/4ebb73e5-9dc5-4482-8451-b5b4256bebe2','The paltry storage space in Google''s Pixel 4 and other smartphones fills up quickly, but Synology America CEO Alex Wang sees the NAS as the solution for that, data sharing, and information security.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/4ebb73e5-9dc5-4482-8451-b5b4256bebe2','en','False'),
    (1572364200000,'Alphabet Stock Looks Cheap Despite Earnings Miss, Analysts Agree','Barron''s','https://cloud.iexapis.com/v1/news/article/d1b8ded5-4590-4778-bc95-ac1bf67bfc21','Many analysts actually raised their price target on the Google parent’s shares, something you don’t normally associate with big earnings whiffs.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/d1b8ded5-4590-4778-bc95-ac1bf67bfc21','en','True'),
    (1572363128000,'"Bitcoin" Google searches hit a 3 month high as volatility returns | Forex Crunch','Forex Crunch','https://cloud.iexapis.com/v1/news/article/474c722b-f2c6-4354-899c-8c205560b42b','The rise and fall with Bitcoin has often been correlated between the amount of Google searches have been made. The chart below clearly shows that the','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/474c722b-f2c6-4354-899c-8c205560b42b','en','False'),
    (1572363113000,'"Bitcoin" Google searches hit a 3 month high as volatility returns','FXStreet','https://cloud.iexapis.com/v1/news/article/fcbbca6c-b723-4b8c-aa28-79290b0610db','The rise and fall with Bitcoin has often been correlated between the amount of Google searches have been made. The chart below clearly shows that the','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/fcbbca6c-b723-4b8c-aa28-79290b0610db','en','False'),
    (1572362415000,'Hey Google! Sell-Side Sentiment Solid After Alphabet''s Q3 Earnings Disappoint','Benzinga Feeds','https://cloud.iexapis.com/v1/news/article/d5ffbd13-121a-4a0d-95ad-07f7eb5a3329','Alphabet Inc (NASDAQ: GOOG ) (NASDAQ: GOOGL ) shares dipped 2% on Tuesday after the company’s third-quarter earnings report fell short of Wall Street expectations . Google’s parent company reported third-quarter EPS of $10.12, below consensus estimates of $12.42. Revenue of $40.5 billion and traffic acquisition costs of $7.49 billion were roughly in-line with estimates. Several Wall Street analysts have weighed in on Alphabet stock since the earnings report. Here’s a sampling of what they’ve had to say. Business As Usual KeyBanc analyst Andy Hargreaves said revenue growth was solid, but operating expenses weighed on profitability. “3Q results showed excellent core Sites ad revenue and continued strong growth in GCP, which, along with other significant growth opportunities, suggests the potential for sustained strong revenue and profit growth for the foreseeable future,” Hargreaves wrote in a note. Morgan Stanley analyst Brian Nowak said the quarter was another demonstration of Alphabet’s “staple-like” ecosystem. “GOOGL’s 3Q results – 21% Y/Y ex-FX websites growth in line with us and $9.7bn of GAAP EBIT (excluding a $554mn legal charge we hadn’t modelled) 3% higher than expected – showcase the continued durability of GOOGL’s top-line …','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/d5ffbd13-121a-4a0d-95ad-07f7eb5a3329','en','False'),
    (1572362040000,'Google-parent Alphabet’s stock falls, but Wall Street giddy despite big earnings miss','MarketWatch','https://cloud.iexapis.com/v1/news/article/3139733a-967d-4079-951c-d81288ca1f66','Alphabet Inc. reported a big third-quarter earnings miss, but the Google-parent’s shares bounced sharply off their worst levels, as a gaggle of Wall Street…','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/3139733a-967d-4079-951c-d81288ca1f66','en','False'),
    (1572361849000,'3 Reasons Fitbit Could Be An Attractive M&A Target','Benzinga','https://cloud.iexapis.com/v1/news/article/6a72c065-855d-45f7-9263-ffddce459184','Shares of Fitbit Inc (NYSE: FIT ) gained about 30% Monday following an M&A report and the company "could possibly be attractive" to a buyer, according to Morgan Stanley. The Analyst Morgan Stanley''s Katy Huberty maintains an Underweight rating on Fitbit''s stock with a $3.20 price target. The Thesis Reuters reported Monday Alphabet Inc (NASDAQ: GOOG ) (NASDAQ: GOOGL ) made an offer to buy the fitness tracker and smartwatch maker. Under Alphabet''s umbrella, Fitbit would provide three benefits, including: Valuable IP in wearables; Partnerships with notable health care companies and providers; and Data collected from … Full story available on Benzinga.com','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/6a72c065-855d-45f7-9263-ffddce459184','en','False'),
    (1572361680000,'S&P 500 ronda recordes em meio a balanços; Alphabet pressiona Nasdaq','Extra','https://cloud.iexapis.com/v1/news/article/3f187116-da6b-4f34-919a-c8ab8e82975d','Por Arjun Panchadar(Reuters) - O índice acionário S&P 500 operava próximo ao seu nível recorde nesta terça-feira, amparado por balanços positivos das farmacêuticas Merck e Pfizer, enquanto um decepcionante lucro… Leia mais','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/3f187116-da6b-4f34-919a-c8ab8e82975d','pt','False'),
    (1572361502000,'Google now lets any company or organization register .new domains, a year after rolling out .new links as shortcuts to create new Google documents (Sarah Perez/TechCrunch)','Techmeme','https://cloud.iexapis.com/v1/news/article/757c80f1-2b9b-4adf-bebb-d3c917c95700','Sarah Perez / TechCrunch : Google now lets any company or organization register .new domains, a year after rolling out .new links as shortcuts to create new Google documents — A year ago, Google rolled out “.new” links that worked like shortcuts to instantly create new Google documents.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/757c80f1-2b9b-4adf-bebb-d3c917c95700','en','False'),
    (1572360794000,'US STOCKS SNAPSHOT-Merck, Pfizer spur S&P 500 to record high; Alphabet weighs on Nasdaq','Devdiscourse','https://cloud.iexapis.com/v1/news/article/3e887c82-0276-42c8-bf91-19bb7bc72393','The SampP 500 hit a fresh record high on Tuesday, lifted by upbeat earnings from drugmakers Merck and Pfizer, while disappointing quarterly profit from Google-','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/3e887c82-0276-42c8-bf91-19bb7bc72393','en','False'),
    (1572360120000,'Worldwide Google Searches for ‘Bitcoin’ Hit 3-Month High','Cointelegraph','https://cloud.iexapis.com/v1/news/article/25c2ed24-f80a-4ffd-b65f-2d7f87dd7d55','Worldwide Google searches for “Bitcoin” have hit the highest level in three months, suggesting an overall shift in market sentiment as China supports blockchain','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/25c2ed24-f80a-4ffd-b65f-2d7f87dd7d55','en','False'),
    (1572359924000,'Google brings its ‘.new’ domains to the rest of the web, including to Spotify, Microsoft & others – TechCrunch','TechCrunch','https://cloud.iexapis.com/v1/news/article/9ee0abdc-f29f-450c-bed1-f67adb20d0ab','A year ago, Google rolled out “.new” links that worked like shortcuts to instantly create new Google documents. For example, you could type “doc.new” (without the quotes) to create a new Google Doc or “sheet.new” to create a new spreadsheet. Today, Google is bringing the .new shortcuts to the rest of the web. Now, any […]','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/9ee0abdc-f29f-450c-bed1-f67adb20d0ab','en','False'),
    (1572359342000,'Google parent-group Alphabet could take over Fitbit, with development center in Romania','Romania Insider','https://cloud.iexapis.com/v1/news/article/589daaea-ccec-4664-adfe-16f8079ee959','No summary available.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/589daaea-ccec-4664-adfe-16f8079ee959','en','False'),
    (1572358261000,'S&P 500 hangs close to record after mixed profit reports','ABC News','https://cloud.iexapis.com/v1/news/article/0a38a514-a0fc-4a2c-aa2b-73e9b783b550','U.S. stocks slinked around their record highs Tuesday after Google''s parent and other big companies turned in a mixed set of profit reports.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/0a38a514-a0fc-4a2c-aa2b-73e9b783b550','en','False'),
    (1572356394000,'Google launches .new domain shortcut registrations for businesses','TechRepublic','https://cloud.iexapis.com/v1/news/article/228f18ed-4e8a-4ed0-b2f0-e98f62acc405','Businesses will be able to register their own Domains with an extension of .new to take users to a website for creating content.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/228f18ed-4e8a-4ed0-b2f0-e98f62acc405','en','False'),
    (1572356350000,'Depois dos recordes, Wall Street alivia com Alphabet a penalizar','Jornal de Negócios','https://cloud.iexapis.com/v1/news/article/0bc70f8c-0ef7-4291-ad8e-77cea6a7b7e5','No dia seguinte aos recordes alcançados pelas principais praças norte-americanas, Wall Street iniciou a sessão desta terça-feira em terreno negativo, com a perspetiva de cortes de juros pela Fed a pressionar, bem como os resultados negativos apresentados por cotadas como a Alphabet.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/0bc70f8c-0ef7-4291-ad8e-77cea6a7b7e5','pt','False'),
    (1572355343000,'Are Billionaires Smarter Than Jim Cramer? Cramer on Merck and Alphabet','The Street','https://cloud.iexapis.com/v1/news/article/8ab5fefa-71e4-48b8-b611-a55bdc831f15','Jim Cramer weighs in on Merck, Alphabet and why he thinks that billionaires are smarter than him….MRK','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/8ab5fefa-71e4-48b8-b611-a55bdc831f15','en','False'),
    (1572354783000,'Ad sales rise can''t save Google parent Alphabet from profit slump','Prolific London','https://cloud.iexapis.com/v1/news/article/1b84274a-26cb-431f-a0f3-c66d14320602','Profits at Google''s parent company Alphabet have fallen by 23 per cent in the face of rising costs.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/1b84274a-26cb-431f-a0f3-c66d14320602','en','False'),
    (1572354369000,'Amazon Earnings, AWS Concerns, Google’s Earnings','Stratechery','https://cloud.iexapis.com/v1/news/article/102fba80-9839-443b-ac07-d6ccc7b27735','Amazon’s earnings are encouraging because profits are down. Still, there is reason for concern around AWS. Then, Google’s top-line continues to impress, but the company continues to was…','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/102fba80-9839-443b-ac07-d6ccc7b27735','en','False'),
    (1572352902000,'Google Owner Alphabet Keen to Buy Fitbit as Both Stocks Rise Exponentially','Coinspeaker','https://cloud.iexapis.com/v1/news/article/18fba8e9-58f7-4d90-af0e-f58da84771ea','It is reported that Google''s parent company Alphabet Inc. is considering an p[tion of acquiring wearable fitness device maker Fitbit. However, the figures haven''t been dislosed by this moment.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/18fba8e9-58f7-4d90-af0e-f58da84771ea','en','False'),
    (1572350400000,'Google''s Second-Gen $49 Speaker Looks the Same, Sounds Better','WIRED','https://cloud.iexapis.com/v1/news/article/c2be30af-2c32-4fe2-9138-58b5455bb526','The new version of Google''s budget smart speaker packs improved sound and onboard machine learning.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/c2be30af-2c32-4fe2-9138-58b5455bb526','en','False'),
    (1572350240000,'Alphabet registra US$ 40,5 bi de receita para o trimestre, mas ações caem - Computerworld','ComputerWorld Brazil','https://cloud.iexapis.com/v1/news/article/9d83d19d-bf34-46bd-831a-121845639ab4','Computerworld | o porta-voz do mercado de tecnologia','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/9d83d19d-bf34-46bd-831a-121845639ab4','pt','False'),
    (1572349947000,'Futures tick lower on mixed earnings reports','MarketScreener','https://cloud.iexapis.com/v1/news/article/0a7a7a69-233a-42b9-9ed5-913d603743f9','U.S. stock index futures edged lower on Tuesday as investors assessed a mixed batch of earnings reports, including from Google parent Alphabet and big drugmakers Merck and Pfizer. …','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/0a7a7a69-233a-42b9-9ed5-913d603743f9','en','False'),
    (1572348554000,'Facebook, Google, Twitter urged to do more to combat fake news in EU | MarketScreener','MarketScreener','https://cloud.iexapis.com/v1/news/article/e27bab03-9f77-4ece-8b33-cab9a1d66674','Facebook, Google and Twitter must do more to tackle fake news or face regulatory action, the European Commission said on Tuesday…. | October 29, 2019','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/e27bab03-9f77-4ece-8b33-cab9a1d66674','en','False'),
    (1572347940000,'Alphabet reports increased revenue for Q3, but profits are down 23 percent','TechSpot','https://cloud.iexapis.com/v1/news/article/53e6572c-5e92-4041-9d3f-52f30c443f95','Last August, Alphabet was seen taking over Apple to become the most cash-rich company on Earth, mostly because of the latter''s overseas profit repatriation and relatively high R&D spending. However, Google''s parent company has posted its latest financial report, which…','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/53e6572c-5e92-4041-9d3f-52f30c443f95','en','False'),
    (1572346800000,'Buying Fitbit won’t help Google overcome Apple’s biggest smartwatch advantage','The Verge','https://cloud.iexapis.com/v1/news/article/4c5872d1-7ba4-4019-aeec-15b58d6435ee','Assuming it bears out, I think that this acquisition portends a wearables reboot instead of shoring up Google’s current smartwatch strategy. I think that mainly because Google’s current smartwatch strategy isn’t helped by Fitbit — at all. Unless Google has completely lost the thread, this acquisition only makes sense if the company is ready to try something completely different.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/4c5872d1-7ba4-4019-aeec-15b58d6435ee','en','False'),
    (1572343622000,'Australia Says Google Misled Consumers Over Location Tracking','New York Times Digital','https://cloud.iexapis.com/v1/news/article/5598bcee-1472-4b71-a748-5cab0298885f','The company did not disclose the need to disable two different Android settings to stop data collection, regulators said in a lawsuit.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/5598bcee-1472-4b71-a748-5cab0298885f','en','False'),
    (1572342222000,'Alphabet Slides After Google Parent Misses Q3 Earnings Estimate As Expenses Soar','The Street','https://cloud.iexapis.com/v1/news/article/2a46684e-a08e-4506-ac46-3f6f05abd16b','Alphabet shares were indicated lower in pre-market trading Tuesday after the Google parent posted weaker-than-expected third quarter earnings as expenses continue to outpace revenues at the sprawling tech giant….GOOGL','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/2a46684e-a08e-4506-ac46-3f6f05abd16b','en','False'),
    (1572341768000,'Business Bulletin: BP profits slump 40 per cent | Google owner''s revenue up 20 per cent | House prices barely move in Brexit mire','Herald Scotland','https://cloud.iexapis.com/v1/news/article/3e35bb1c-a538-4054-a8cb-ab4f852a439a','A low oil price and bad weather in the Gulf of Mexico combined to form a deadly cocktail for oil giant BP as the company said on Tuesday that its…','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/3e35bb1c-a538-4054-a8cb-ab4f852a439a','en','False'),
    (1572341019000,'12 Stocks To Watch For October 29, 2019','Benzinga Feeds','https://cloud.iexapis.com/v1/news/article/8c2a0b37-47a6-424f-a7d8-101c360e4d04','Some of the stocks that may grab investor focus today are: Wall Street expects Kellogg Company (NYSE: K ) to report quarterly earnings at $0.91 per share on revenue of $3.35 billion before the opening bell. Kellogg shares gained 0.3% to close at $61.06 on Monday. Analysts expect Mondelez International, Inc. (NASDAQ: MDLZ ) to post quarterly earnings at $0.60 per share on revenue of $6.34 billion after the closing bell. Mondelez shares gained 0.2% to $52.50 in after-hours trading. Before the markets open, Mastercard Incorporated (NYSE: MA ) is projected to report quarterly earnings at $2.01 per share on revenue of $4.42 billion. Mastercard shares fell 0.1% to $275.77 in after-hours trading. Alphabet Inc (NASDAQ: GOOG ) reported weaker-than-expected earnings for its third quarter, while sales missed estimates. Alphabet shares fell 1.4% to $1,272.00 in the after-hours trading session. Analysts are expecting Pfizer … Full story available on Benzinga.com','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/8c2a0b37-47a6-424f-a7d8-101c360e4d04','en','False'),
    (1572340765000,'Australian consumer watchdog sues Google over location data','ABC News','https://cloud.iexapis.com/v1/news/article/49a40094-fff6-4d97-b3d5-253dc637a199','The Australian consumer watchdog is taking Google to court alleging the technology giant broke consumer law by misleading Android users about how their location data was used','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/49a40094-fff6-4d97-b3d5-253dc637a199','en','False'),
    (1572339193000,'Google Play Music hits 5 bn Play Store downloads','Sify.com','https://cloud.iexapis.com/v1/news/article/346b9d7e-c40a-4009-b65e-63d080bca5e5','San Francisco: The official Google music streaming service for years -- Google Play Music -- has crossed 5 billion downloads on the Google Play Store, which makes it the sixth app to cross this mark, following Chrome, Gmail, Maps, Search and YouTube, the media has reported. Incidentally, YouTube, Maps, Search, Gmail, and Chrome come pre-installed on Android devices, thus, helping their numbers. With YouTube Music becoming the default app on Android 10, its predecessor will have to face the music: Its install number growth will stall and will eventually fade out, Android Police has reported on Sunday. The search engine giant will pre-install YouTube Music instead of Play Music on future Android phones. The firm confirmed the news on the YouTube blog last month, mentioning that all new devices launching with Android 10 OS and Android Pie will offer the app out of the box.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/346b9d7e-c40a-4009-b65e-63d080bca5e5','en','False'),
    (1572338715000,'Alphabet trying to buy Fitbit to keep pace with wearables growth','siliconrepublic.com','https://cloud.iexapis.com/v1/news/article/bbbab16a-3e72-4538-8037-bb7c489f0e43','Google’s parent company Alphabet has made a bid for wearables producer Fitbit resulting in the latter’s shares jumping 27pc.','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/bbbab16a-3e72-4538-8037-bb7c489f0e43','en','False'),
    (1572338705000,'Boris Johnson To Try Again For General Election [Video]','FXStreet','https://cloud.iexapis.com/v1/news/article/42d7a023-aed9-41f4-a050-75c42f6d9b64','- Review of yesterday''s Risk On Sentiment in Markets. - Alphabet''s Earning''s miss. - General Election update after vote for election fails. - Review o','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/42d7a023-aed9-41f4-a050-75c42f6d9b64','en','False'),
    (1572338454000,'Consumer data privacy breach spells lawsuit for Alphabet''s Google in Australia','Russia Today','https://cloud.iexapis.com/v1/news/article/042166d8-9b5b-41a9-adf9-706991bfd07b','Australian Competition and Consumer Commission (ACCC) filed a lawsuit against Alphabet’s Google on Tuesday, alleging that the company misled smartphone users on how personal location data was being collected, kept and used. Read Full Article at RT.com','GOOGL,GOOG','https://cloud.iexapis.com/v1/news/image/042166d8-9b5b-41a9-adf9-706991bfd07b','en','False');
