package co.pr.fi.domain;

//첨부파일 
public class BFile {

 // 첨부파일키값 
 private int fileKey;

 // 파일명_ORIGIN 
 private String fileOriginal;

 // 파일명 
 private String fileName;

 // 모임게시글키값 
 private int postKey;

 public int getFileKey() {
     return fileKey;
 }

 public void setFileKey(int fileKey) {
     this.fileKey = fileKey;
 }

 public String getFileOriginal() {
     return fileOriginal;
 }

 public void setFileOriginal(String fileOriginal) {
     this.fileOriginal = fileOriginal;
 }

 public String getFileName() {
     return fileName;
 }

 public void setFileName(String fileName) {
     this.fileName = fileName;
 }

 public int getPostKey() {
     return postKey;
 }

 public void setPostKey(int postKey) {
     this.postKey = postKey;
 }

 // BFile 모델 복사
 public void CopyData(BFile param)
 {
     this.fileKey = param.getFileKey();
     this.fileOriginal = param.getFileOriginal();
     this.fileName = param.getFileName();
     this.postKey = param.getPostKey();
 }
}