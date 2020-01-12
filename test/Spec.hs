import qualified Test.Hspec as T

import qualified Utils as U

main :: IO ()
main = T.hspec $
  T.it "should be equal" (U.equal (1 :: Int) 1)
