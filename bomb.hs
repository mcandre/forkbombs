import Control.Monad
import System.Posix.Process

bomb = forever $ forkProcess bomb
