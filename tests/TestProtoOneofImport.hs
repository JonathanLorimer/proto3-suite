{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
-- | Generated by Haskell protocol buffer compiler. DO NOT EDIT!
module TestProtoOneofImport where
import qualified Prelude as Hs
import qualified Proto3.Suite.DotProto as HsProtobuf
import qualified Proto3.Suite.Types as HsProtobuf
import qualified Proto3.Suite.Class as HsProtobuf
import qualified Proto3.Suite.JSONPB as HsJSONPB
import Proto3.Suite.JSONPB ((.=), (.:))
import qualified Proto3.Wire as HsProtobuf
import Control.Applicative ((<*>), (<|>), (<$>))
import qualified Control.Monad as Hs
import qualified Data.Text.Lazy as Hs (Text)
import qualified Data.ByteString as Hs
import qualified Data.String as Hs (fromString)
import qualified Data.Vector as Hs (Vector)
import qualified Data.Int as Hs (Int16, Int32, Int64)
import qualified Data.Word as Hs (Word16, Word32, Word64)
import qualified GHC.Generics as Hs
import qualified GHC.Enum as Hs
 
data WithOneof = WithOneof{withOneofPickOne ::
                           Hs.Maybe WithOneofPickOne}
               deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic)
 
instance HsProtobuf.Named WithOneof where
        nameOf _ = (Hs.fromString "WithOneof")
 
instance HsProtobuf.Message WithOneof where
        encodeMessage _ WithOneof{withOneofPickOne = withOneofPickOne}
          = (Hs.mconcat
               [case withOneofPickOne of
                    Hs.Nothing -> Hs.mempty
                    Hs.Just x
                      -> case x of
                             WithOneofPickOneA y
                               -> (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                                     (HsProtobuf.ForceEmit y))
                             WithOneofPickOneB y
                               -> (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                                     (HsProtobuf.ForceEmit y))])
        decodeMessage _
          = (Hs.pure WithOneof) <*>
              (HsProtobuf.oneof Hs.Nothing
                 [((HsProtobuf.FieldNumber 1),
                   (Hs.pure (Hs.Just Hs.. WithOneofPickOneA)) <*>
                     HsProtobuf.decodeMessageField),
                  ((HsProtobuf.FieldNumber 2),
                   (Hs.pure (Hs.Just Hs.. WithOneofPickOneB)) <*>
                     HsProtobuf.decodeMessageField)])
        dotProto _ = []
 
instance HsJSONPB.ToJSONPB WithOneof where
        toJSONPB (WithOneof f1_or_f2)
          = (HsJSONPB.object
               [case f1_or_f2 of
                    Hs.Just (WithOneofPickOneA f1) -> (HsJSONPB.pair "a" f1)
                    Hs.Just (WithOneofPickOneB f2) -> (HsJSONPB.pair "b" f2)
                    Hs.Nothing -> Hs.mempty])
        toEncodingPB (WithOneof f1_or_f2)
          = (HsJSONPB.pairs
               [case f1_or_f2 of
                    Hs.Just (WithOneofPickOneA f1) -> (HsJSONPB.pair "a" f1)
                    Hs.Just (WithOneofPickOneB f2) -> (HsJSONPB.pair "b" f2)
                    Hs.Nothing -> Hs.mempty])
 
instance HsJSONPB.FromJSONPB WithOneof where
        parseJSONPB
          = (HsJSONPB.withObject "WithOneof"
               (\ obj ->
                  (Hs.pure WithOneof) <*>
                    Hs.msum
                      [Hs.Just Hs.. WithOneofPickOneA <$> (HsJSONPB.parseField obj "a"),
                       Hs.Just Hs.. WithOneofPickOneB <$> (HsJSONPB.parseField obj "b"),
                       Hs.pure Hs.Nothing]))
 
instance HsJSONPB.ToJSON WithOneof where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON WithOneof where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema WithOneof where
        declareNamedSchema = HsJSONPB.genericDeclareNamedSchemaJSONPB
 
data WithOneofPickOne = WithOneofPickOneA Hs.Text
                      | WithOneofPickOneB Hs.Int32
                      deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic)
 
instance HsProtobuf.Named WithOneofPickOne where
        nameOf _ = (Hs.fromString "WithOneofPickOne")
 
instance HsJSONPB.ToSchema WithOneofPickOne where
        declareNamedSchema = HsJSONPB.genericDeclareNamedSchemaJSONPB