create_deployment
update_deployment in_progress "https://pdf.sujal.dev/act/report.pdf"

# Build PDF
mkdir -p ./build/act
pdflatex -interaction=nonstopmode -output-format=pdf -output-directory=./build/act -shell-escape ./src/report.tex
cd ./build/act || exit

# Clean up build files
find ./* ! -name "report.pdf" -delete

# Build Preview Images
pdftoppm report.pdf preview -png

clear_image_cache
update_deployment success
