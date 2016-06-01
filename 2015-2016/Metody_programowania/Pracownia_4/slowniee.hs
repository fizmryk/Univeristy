import Slownie
import Data.List
import System.Environment

okresl_walute :: String -> Waluta
okresl_walute kod = case kod of
	"AUD" -> (Waluta "dolar australijski" "dolary australijskie" "dolarów australijakich" Meski)
	"BGN" -> (Waluta "lew bułgarski" "lewy bułgarskie" "lewów bułgarskich" Meski)
	"BRL" -> (Waluta "real brazylijski" "reale brazylijskie" "reali brazylijskich" Meski)
	"BYR" -> (Waluta "rubel białoruski" "ruble białoruskie" "rubli białoruskich" Meski)
	"CAD" -> (Waluta "dolar kanadyjski" "dolary kanadyjskie" "dola`ów kanadyjskich" Meski)
	"CHF" -> (Waluta "frank szwajcarski" "franki szwajcarskie" "franków szwajcarskich" Meski)
	"CNY" -> (Waluta "juan chiński" "juany chińskie" "juanów chińskich" Meski)
	"CZK" -> (Waluta "korona czeska" "korony czeskie" "koron czeskich" Zenski)
	"DKK" -> (Waluta "korona duńska" "korony duńskie" "koron duńskich" Zenski)
	"EUR" -> (Waluta "euro" "euro" "euro" Nijaki)
	"GBP" -> (Waluta "funt szterling" "funty szterlingi" "funtów szterlingów" Meski)
	"HKD" -> (Waluta "dolar hongkoński" "dolary hongkońskie" "dolarów hongkońskich" Meski)
	"HRK" -> (Waluta "kuna chorwacka" "kuny chorwackie" "kun chorwackich" Zenski)
	"HUF" -> (Waluta "forint węgierski" "forinty węgierskie" "forintów węgierskich" Meski)
	"IDR" -> (Waluta "rupia indonezyjska" "rupie indonezyjskie" "rupii indonezyjskich" Zenski)
	"ISK" -> (Waluta "korona islandzka" "korony islandzkie" "koron islandzkich" Zenski)
	"JPY" -> (Waluta "jen japoński" "jeny japońskie" "jenów japońskich" Meski)
	"KRW" -> (Waluta "won południowokoreański" "wony południowokoreańskie" "wonów południowokoreańskich" Meski)
	"MXN" -> (Waluta "peso meksykańskie" "peso meksykańskie" "peso meksykańskich" Nijaki)
	"MYR" -> (Waluta "ringgit malezyjski" "ringgity malezyjskie" "ringgitów malezyjskich" Meski)
	"NOK" -> (Waluta "korona norweska" "korony norweskie" "koron norweskich" Zenski)
	"NZD" -> (Waluta "dolar nowozelandzki" "dolary nowozelandzkie" "dolarów nowozelandzkich" Meski)
	"PHP" -> (Waluta "peso filipińskie" "peso filipińskie" "peso filipińskich" Nijaki)
	"PLN" -> (Waluta "złoty polski" "złote polskie" "złotych polskich" Meski)
	"RON" -> (Waluta "lej rumuński" "leje rumuńskie" "lejów rumuńskich" Meski)
	"RUB" -> (Waluta "rubel rosyjski" "ruble rosyjskie" "rubli rosyjskich" Meski)
	"SDR" -> (Waluta "specjalne prawo ciągnienia" "specjalne prawa ciągnienia" "specjalnych praw ciągnienia" Nijaki)
	"SEK" -> (Waluta "korona szwedzka" "korony szwedzkie" "koron szwedzkich" Zenski)
	"SGD" -> (Waluta "dolar singapurski" "dolary singapurskie" "dolarów singapurskich" Meski)
	"THB" -> (Waluta "baht tajski" "bahty tajskie" "bahtów tajskich" Meski)
	"TRY" -> (Waluta "lira turecka" "liry tureckie" "lir tureckich" Zenski)
	"UAH" -> (Waluta "hrywna ukraińska" "hrywny ukraińskie" "hrywien ukraińskich" Zenski)
	"USD" -> (Waluta "dolar amerykański" "dolary amerykańskie" "dolarów amerykańskich" Meski)
	"ZAR" -> (Waluta "rand południowoafrykański" "randy południowoafrykańskie" "randów południowoafrykańskich" Meski)


main :: IO()
main = do
	lista <- getArgs
	if (length $ head lista) > 6000 && (head $ head lista) /= '-'  then putStrLn "mnóstwo" -- wariant, gdy liczba > 10^6000 - 1
	else if ((length $ head lista) > 6001 && (head $ head lista) == '-') then putStrLn "mnóstwo" --wariant, gdy liczba < -10^6000 + 1
	else putStrLn $ slownie (okresl_walute $ last lista) (read (head lista) :: Integer ) --wariant normalny