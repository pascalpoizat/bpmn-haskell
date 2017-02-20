-----------------------------------------------------------------------------
-- |
-- Module      :  Spec
-- Copyright   :  (c) 2017 Pascal Poizat
-- License     :  Apache-2.0 (see the file LICENSE)
--
-- Maintainer  :  pascal.poizat@lip6.fr
-- Stability   :  experimental
-- Portability :  unknown
--
-- Main test file for the library.
-----------------------------------------------------------------------------

import           Bpmn
import           Test.Tasty
import           Test.Tasty.HUnit

main :: IO ()
main = defaultMain test

test :: TestTree
test = testGroup "Tests" [maintests]

maintests :: TestTree
maintests = testGroup "unit tests" [uDumb]

uDumb :: TestTree
uDumb =
  testGroup "dumb test"
            [(testCase "dumb" $ someFunc)]
