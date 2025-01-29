# Data Producer Upload Instructions

Please see the following [rclone](#rclone) section for more information on how to upload and synchronize data to be provided to the related Google Cloud Storage bucket.

We suggest using [`rclone`](https://rclone.org) to assist with data uploads to the Google Cloud bucket related to this project.

## rclone

Please see the following instructions on uploading data to the Google Cloud bucket using [rclone](https://rclone.org/).

1. [Install rclone](https://rclone.org/install/).

1. [Configure rclone with Google Cloud Storage](https://rclone.org/googlecloudstorage/).

   - Note: if using a Google account, make sure to authenticate using this account when prompted within the web browser (the terminal will prompt through the browser)
   - Note: if using a service account, make sure to have the service account JSON key file available and provide the path to this file when prompted.
     An example of config setup can be found below.

1. Test access to Google Cloud Storage bucket with the configured rclone access using, for example, `rclone ls <configured_name>:gc-saguaro_udm_bucket`

1. Synchronize data found within bucket by using [`rclone` commands](https://rclone.org/commands/).

   - Please note: many rclone commands are recursive __by default__ with options to disable.
   - An example with the sync command: `rclone sync <data source>  <configured_name>:gc-saguaro_udm_bucket`

### Additional Notes (rclone)

- __Question__: What should I do if I see the error: `"Error 400: Cannot insert legacy ACL for an object when uniform bucket-level access is enabled."`?
- __Answer__: Try using one of the following options (only one is needed):
  - Add an environment variable like the following (command may vary based on operating system): `export RCLONE_GCS_BUCKET_POLICY_ONLY=true`
  - Use an additional command-line flag `rclone --gcs-bucket-policy-only ...<the rest of your command goes here>...`

Example of rclone configuration setup:

```bash
rclone config
```

## 

```bash
Current remotes:

Name                 Type
====                 ====

e) Edit existing remote
n) New remote
d) Delete remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
e/n/d/r/c/s/q>
```

```
n
```

## 

```
name>
```

```
udm_test
```

## 

```
Type of storage to configure.
Enter a string value. Press Enter for the default ("").
Choose a number from below, or type in your own value
 1 / 1Fichier
   \ "fichier"
 2 / Alias for an existing remote
   \ "alias"
 3 / Amazon Drive
   \ "amazon cloud drive"
 4 / Amazon S3 Compliant Storage Provider (AWS, Alibaba, Ceph, Digital Ocean, Dreamhost, IBM COS, Minio, Tencent COS, etc)
   \ "s3"
 5 / Backblaze B2
   \ "b2"
 6 / Box
   \ "box"
 7 / Cache a remote
   \ "cache"
 8 / Citrix Sharefile
   \ "sharefile"
 9 / Dropbox
   \ "dropbox"
10 / Encrypt/Decrypt a remote
   \ "crypt"
11 / FTP Connection
   \ "ftp"
12 / Google Cloud Storage (this is not Google Drive)
   \ "google cloud storage"
13 / Google Drive
   \ "drive"
14 / Google Photos
   \ "google photos"
15 / Hubic
   \ "hubic"
16 / In memory object storage system.
   \ "memory"
17 / Jottacloud
   \ "jottacloud"
18 / Koofr
   \ "koofr"
19 / Local Disk
   \ "local"
20 / Mail.ru Cloud
   \ "mailru"
21 / Microsoft Azure Blob Storage
   \ "azureblob"
22 / Microsoft OneDrive
   \ "onedrive"
23 / OpenDrive
   \ "opendrive"
24 / OpenStack Swift (Rackspace Cloud Files, Memset Memstore, OVH)
   \ "swift"
25 / Pcloud
   \ "pcloud"
26 / Put.io
   \ "putio"
27 / SSH/SFTP Connection
   \ "sftp"
28 / Sugarsync
   \ "sugarsync"
29 / Transparently chunk/split large files
   \ "chunker"
30 / Union merges the contents of several upstream fs
   \ "union"
31 / Webdav
   \ "webdav"
32 / Yandex Disk
   \ "yandex"
33 / http Connection
   \ "http"
34 / premiumize.me
   \ "premiumizeme"
35 / seafile
   \ "seafile"
Storage>
```

```
12
```

## 

```
OAuth Client Id
Leave blank normally.
Enter a string value. Press Enter for the default ("").
```

```
```

## 

```
client_id>
OAuth Client Secret
Leave blank normally.
Enter a string value. Press Enter for the default ("").

client_secret>
```

```
```

## 

```
Project number.
Optional - needed only for list/create/delete buckets - see your developer console.
Enter a string value. Press Enter for the default ("").
project_number>
```

```
```

## 

```
Service Account Credentials JSON file path
Leave blank normally.
Needed only if you want use SA instead of interactive login.

Leading `~` will be expanded in the file name as will environment variables such as `${RCLONE_CONFIG_DIR}`.

Enter a string value. Press Enter for the default ("").
service_account_file>
```

```
path/to/service/account/key.json
```

## 

```
Access public buckets and objects without credentials
Set to 'true' if you just want to download files and don't configure credentials.
Enter a boolean value (true or false). Press Enter for the default ("false").
anonymous>
```

```
false
```

## 

```
Access Control List for new objects.
Enter a string value. Press Enter for the default ("").
Choose a number from below, or type in your own value
 1 / Object owner gets OWNER access, and all Authenticated Users get READER access.
   \ "authenticatedRead"
 2 / Object owner gets OWNER access, and project team owners get OWNER access.
   \ "bucketOwnerFullControl"
 3 / Object owner gets OWNER access, and project team owners get READER access.
   \ "bucketOwnerRead"
 4 / Object owner gets OWNER access [default if left blank].
   \ "private"
 5 / Object owner gets OWNER access, and project team members get access according to their roles.
   \ "projectPrivate"
 6 / Object owner gets OWNER access, and all Users get READER access.
   \ "publicRead"
object_acl>
```

```
```

## 

```
Access Control List for new buckets.
Enter a string value. Press Enter for the default ("").
Choose a number from below, or type in your own value
 1 / Project team owners get OWNER access, and all Authenticated Users get READER access.
   \ "authenticatedRead"
 2 / Project team owners get OWNER access [default if left blank].
   \ "private"
 3 / Project team members get access according to their roles.
   \ "projectPrivate"
 4 / Project team owners get OWNER access, and all Users get READER access.
   \ "publicRead"
 5 / Project team owners get OWNER access, and all Users get WRITER access.
   \ "publicReadWrite"
bucket_acl>
```

```
```

## 

```
Access checks should use bucket-level IAM policies.

If you want to upload objects to a bucket with Bucket Policy Only set
then you will need to set this.

When it is set, rclone:

- ignores ACLs set on buckets
- ignores ACLs set on objects
- creates buckets with Bucket Policy Only set

Docs: https://cloud.google.com/storage/docs/bucket-policy-only

Enter a boolean value (true or false). Press Enter for the default ("false").
bucket_policy_only>
```

```
```

## 

```
Location for the newly created buckets.
Enter a string value. Press Enter for the default ("").
Choose a number from below, or type in your own value
 1 / Empty for default location (US).
   \ ""
 2 / Multi-regional location for Asia.
   \ "asia"
 3 / Multi-regional location for Europe.
   \ "eu"
 4 / Multi-regional location for United States.
   \ "us"
 5 / Taiwan.
   \ "asia-east1"
 6 / Hong Kong.
   \ "asia-east2"
 7 / Tokyo.
   \ "asia-northeast1"
 8 / Mumbai.
   \ "asia-south1"
 9 / Singapore.
   \ "asia-southeast1"
10 / Sydney.
   \ "australia-southeast1"
11 / Finland.
   \ "europe-north1"
12 / Belgium.
   \ "europe-west1"
13 / London.
   \ "europe-west2"
14 / Frankfurt.
   \ "europe-west3"
15 / Netherlands.
   \ "europe-west4"
16 / Iowa.
   \ "us-central1"
17 / South Carolina.
   \ "us-east1"
18 / Northern Virginia.
   \ "us-east4"
19 / Oregon.
   \ "us-west1"
20 / California.
   \ "us-west2"
location>
```

```
16
```

## 

```
The storage class to use when storing objects in Google Cloud Storage.
Enter a string value. Press Enter for the default ("").
Choose a number from below, or type in your own value
 1 / Default
   \ ""
 2 / Multi-regional storage class
   \ "MULTI_REGIONAL"
 3 / Regional storage class
   \ "REGIONAL"
 4 / Nearline storage class
   \ "NEARLINE"
 5 / Coldline storage class
   \ "COLDLINE"
 6 / Archive storage class
   \ "ARCHIVE"
 7 / Durable reduced availability storage class
   \ "DURABLE_REDUCED_AVAILABILITY"
storage_class>
```

```
```

## 

```
Edit advanced config? (y/n)
y) Yes
n) No (default)

y/n>
```

```
n
```

## 

```
Remote config
--------------------
[udm_test]
service_account_file = path/to/file.json
anonymous = false
location = us-central1
--------------------
y) Yes this is OK (default)
e) Edit this remote
d) Delete this remote
y/e/d>
```

```
y
```
